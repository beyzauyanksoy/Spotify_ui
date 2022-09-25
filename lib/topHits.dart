import 'package:flutter/material.dart';

import 'firstClassMusic.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {
  List<String> icons = [
    "assets/greenHeartIcon.png",
    "assets/greenHeartIcon.png",
    "assets/favorite.png",
    "assets/favorite.png",
  ];
  List<String> featuring = [
    "assets/stay.png",
    "assets/wishingWell.png",
    "assets/firstClass.png",
    "assets/unstable.png"
  ];
  List<String> playPause = [
    "assets/playIcon.png",
    "assets/playIcon.png",
    "assets/stopIcon.png",
    "assets/playIcon.png"
  ];
  List<String> featuringText = [
    "STAY",
    "Wishing Well",
    "First Class",
    "Unstable"
  ];
  List<String> featuringExplanation = [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Image.asset('assets/favorite.png'),
          Image.asset('assets/more-vertical.png'),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/topHitsPageImage.png",
                    ),
                  ),
                  Positioned(
                    bottom: 110,
                    left: 42,
                    child: Image.asset('assets/todays.png'),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 40,
                    child: Image.asset('assets/topHits.png'),
                  ),
                  Positioned(
                    child: Image.asset("assets/topHitsPLay.png"),
                    right: 10,
                    bottom: 0,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 25,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/iconHeart.png',
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '357,828 likes',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 155,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/iconClock.png',
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '2hr 40min',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 24),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Featuring',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.all(0),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FirstClassMusic(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.shade900, width: 1),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Image.asset(
                                        featuring[index],
                                      ),
                                    ),
                                    Positioned(
                                      left: 35,
                                      top: 35,
                                      child: Image.asset(playPause[index]),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    width: 200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 7),
                                            child: Text(
                                              featuringText[index],
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15),
                                          child: Text(
                                            featuringExplanation[index],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset(icons[index]),
                                const SizedBox(
                                  width: 24,
                                ),
                                Image.asset('assets/more-vertical.png'),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
