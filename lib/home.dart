import 'package:flutter/material.dart';
import 'package:spotify_ui/topHits.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int selectedIndex = 0;

class _HomeState extends State<Home> {
  List<String> photos = [
    "assets/impaulsive.png",
    "assets/ted.png",
    "assets/momsBasement.png",
  ];
  List<String> smallPhotos = [
    "assets/Vector.png",
    "assets/blackSmall.png",
    "assets/Vector.png",
  ];

  List<dynamic> gradients = [
    [const Color(0xffE02FCF), const Color(0xff03CF93)],
    [const Color(0xff0A3CEC), const Color(0xff4DD4AC)],
    [const Color(0xff0A3CEC), const Color(0xffC6CF16)],
    [const Color(0xff0E31AE), const Color(0xffDD1010)],
  ];

  List<String> names = ["Impaulsive", "Ted Talks Daily", "Mom’s Basement"];
  List<String> eps = ["334 ep", "155 ep", "75 ep"];
  List<String> cardNames = [
    "Made For You",
    "Charts",
    "Discover",
    "New Release"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 15, right: 15, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Search',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Artist, song, or podcast',
                    hintStyle: TextStyle(color: Colors.grey.shade700),
                    fillColor: const Color(0xff0E0E0F),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 110,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xff0E0E0F),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'The Kid LAROI',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 80,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xff0E0E0F),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Drake',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 110,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xff0E0E0F),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Justine Bieber',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 80,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xff0E0E0F),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'Joji',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 120,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff0E0E0F),
                        ),
                        child: const Text(
                          'Hip Hop',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        alignment: Alignment.center,
                        width: 120,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff0E0E0F),
                        ),
                        child: const Text(
                          'Pop',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TopHits(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          alignment: Alignment.center,
                          width: 120,
                          height: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff0E0E0F),
                          ),
                          child: const Text(
                            'Top - Hits',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Podcast's",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 195,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: photos.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff0E0E0F),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Image.asset(
                                            photos[index],
                                            height: 113,
                                            width: 125,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, left: 3),
                                          child:
                                              Image.asset(smallPhotos[index]),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 3),
                                      child: Text(
                                        names[index],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Text(
                                      eps[index],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: const Text(
                          'Browse all',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: GridView.builder(
                        padding: EdgeInsets.all(0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                //childAspectRatio: 1.5
                                mainAxisExtent: 120),
                        itemCount: 4,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.red,
                              gradient:
                                  LinearGradient(colors: gradients[index]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Text(
                                cardNames[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            margin: const EdgeInsets.all(6),
                            alignment: Alignment.topLeft,
                          );
                        },
                      ),
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
