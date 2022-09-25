import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List<String> playListImage = [
    "assets/playList1.png",
    "assets/playList2.png",
    "assets/playList3.png",
    "assets/playList4.png"
  ];
  List<String> playListText = [
    "Playlists #1",
    "Playlists #2",
    "Playlists #3",
    "Playlists #4",
  ];
  List<String> activitiesStartIcon = [
    "assets/heart.png",
    "assets/people.png",
    "assets/sound.png",
  ];
  List<String> activitiesText = [
    "Liked Songs",
    "Followed Artists",
    "Followed Podcast",
  ];

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
                children: [
                  const Text(
                    'Your Library',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        'assets/searchicon.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      'assets/personicon.png',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                itemCount: playListImage.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 190),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff0E0E0F),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.all(5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Image.asset(playListImage[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 11, left: 14),
                            child: Text(
                              playListText[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 11),
                child: Text(
                  'See all',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        'Your Activities',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0xff0E0E0F), width: 2),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                //color: Colors.pink,
                                height: 25,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Container(
                                            alignment: Alignment.center,
                                            //color: Colors.red,
                                            width: 30,
                                            child: Image.asset(
                                                activitiesStartIcon[index]),
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          height: 30,
                                          alignment: Alignment.centerLeft,
                                          //color: Colors.amber,
                                          child: Text(
                                            activitiesText[index],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset('assets/send.png'),
                                  ],
                                ),
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
      ),
    );
  }
}
