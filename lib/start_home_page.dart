import 'package:flutter/material.dart';

class StartHomePage extends StatefulWidget {
  const StartHomePage({super.key});

  @override
  State<StartHomePage> createState() => _StartHomePageState();
}

class _StartHomePageState extends State<StartHomePage> {
  List<String> startImages = ["assets/discover.png", "assets/running_away.png"];
  List<String> startText = [
    "30 Fresh music for you every week ",
    "New songs every friday  "
  ];
  List<String> topMixes = [
    "assets/hipHopMix.png",
    "assets/moodyMix.png",
    "assets/houseMix.png",
  ];
  List<String> topMixesText = ["Hip Hop Mix", "Moody Mix", "House Mix"];
  List<String> topMixesExplanation = [
    "Juice Wrld, Drake, Kendrick lamar and more... ",
    "Joji, The Kid LAROI, Tate McRae and more...",
    "Martin Garrix, The Chainsmoker and more..."
  ];
  List<String> artists = [
    "assets/theKidLaroi.png",
    "assets/taylor.png",
    "assets/postMalone.png",
  ];
  List<String> horizontal = [
    "assets/pinkHorizantal.png",
    "assets/yellowHorizontal.png",
    "assets/greenHorizontal.png",
  ];
  List<String> vertical = [
    "assets/pinkVertical.png",
    "assets/yellowVertical.png",
    "assets/greenVertical.png",
  ];
  List<String> artistsName = ["The Kid LAROI ", "Taylor Swift", "Post Malon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 24, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 26,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 53,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/icon.png',
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Weekly',
                          style: TextStyle(
                              color: Color(0xff1ED760),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' Music',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 33),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: Column(
                          children: [
                            Image.asset(startImages[index]),
                            Padding(
                              padding: const EdgeInsets.only(top: 13),
                              child: Text(
                                startText[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffDADADA),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        'Your Top Mixes',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      height: 210,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Stack(children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xff0E0E0F),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 155,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(topMixes[index]),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 5),
                                        child: Text(
                                          topMixesText[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Text(
                                        topMixesExplanation[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 110,
                                left: 15,
                                child: Image.asset(vertical[index]),
                              ),
                              Positioned(
                                bottom: 80,
                                left: 15,
                                child: Image.asset(horizontal[index]),
                              ),
                            ]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        'Suggested artists',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff0E0E0F),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 155,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 15, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(artists[index]),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Text(
                                        artistsName[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
