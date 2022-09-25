import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstClassMusic extends StatefulWidget {
  const FirstClassMusic({super.key});

  @override
  State<FirstClassMusic> createState() => _FirstClassMusicState();
}

class _FirstClassMusicState extends State<FirstClassMusic> {
  List<String> listImage = [
    "assets/image2.png",
    "assets/image1.png",
    "assets/image3.png",
  ];
  List<String> musicImage = [
    "assets/shuffle.png",
    "assets/left.png",
    "assets/play-pause-button.png",
    "assets/right.png",
    "assets/repeat.png"
  ];
  List<String> listText = [
    "STAY",
    "First Class",
    "Wishing Well",
  ];
  List<String> listExplanation = [
    "The Kid LAROI,Justin Bieber",
    "Jack Harlow",
    "Juice WLRD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: Text('Today’s Top Hits'),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 350,
            enableInfiniteScroll: false,
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
          ),
          items: listImage.map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Image.asset(e),
                      const SizedBox(
                        width: 10,
                      ),
                      if (e == "assets/image2.png")
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 7),
                          child: Text(
                            listText[0],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      if (e == "assets/image1.png")
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 7),
                          child: Text(
                            listText[1],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      if (e == "assets/image3.png")
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 7),
                          child: Text(
                            listText[2],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      if (e == "assets/image2.png")
                        Text(
                          listExplanation[0],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      if (e == "assets/image1.png")
                        Text(
                          listExplanation[1],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      if (e == "assets/image3.png")
                        Text(
                          listExplanation[2],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 15,
            child: Slider(
              onChanged: (value) {},
              value: 0.3,
              thumbColor: Colors.white,
              activeColor: Color(0xff1ED760),
              inactiveColor: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '0.22',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              Text(
                '2.53',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(musicImage[0]),
              Image.asset(musicImage[1]),
              Icon(Icons.pause_circle_filled_outlined,
                  size: 70, color: Color(0xff1ED760)),
              // Image.asset(musicImage[2],),
              Image.asset(musicImage[3]),
              Image.asset(musicImage[4]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset("assets/bluetooth.png"),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Airpods Pro',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 300,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Color(0xff0E0E0F),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/favorite.png'),
                Image.asset('assets/artist.png'),
                Image.asset('assets/textIcon.png'),
                Image.asset('assets/devices.png'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
