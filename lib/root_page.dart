import 'package:flutter/material.dart';
import 'package:spotify_ui/home.dart';
import 'package:spotify_ui/library_screen.dart';
import 'package:spotify_ui/start_home_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
 
  int _selectedIndex = 0;
  List<Widget> tumSayfalar = [
    const StartHomePage(),
    const Home(),
    const LibraryScreen(),
  ];
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Home(),
  //   SearchScreen(),
  //   LibraryScreen(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: tumSayfalar.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: bottomNavMenu());
  }

  BottomNavigationBar bottomNavMenu() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: (Image.asset(
              'assets/bottom1.png',
              color: _selectedIndex==0 ? Colors.green: Colors.white
            )),
            label: ""),
        BottomNavigationBarItem(
            icon: (Image.asset(
              'assets/bottom2.png',
              color: _selectedIndex==1 ? Colors.green: Colors.white,
            )),
            label: ""),
        BottomNavigationBarItem(
            icon: (Image.asset(
              'assets/bottom3.png',
              color:_selectedIndex==2 ? Colors.green: Colors.white

            )),
            label: ""),
      ],
      currentIndex: _selectedIndex,
      //selectedItemColor: selectedItemColor,
      onTap: _onItemTapped,
    );
  }
}
