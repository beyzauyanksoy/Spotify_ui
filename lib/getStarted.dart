import 'package:flutter/material.dart';

import 'loginAccount.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Image.asset(
          'assets/personImage.png',
          fit: BoxFit.fill,
          width: 500,
        ),
        const Positioned(
          bottom: 190,
          left: 160,
          child: Text(
            'Spotify ',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
        const Positioned(
          bottom: 130,
          left: 55,
          child: Text(
            'Spo A digital music, podcast, and video service\n that gives you access to millions of songs and\n other content from creators all over the world. ',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginAccount(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xff1ED760),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: 300,
              height: 50,
            ))
      ]),
    );
  }
}
