import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'landingPage.dart';

class LandingPageFirst extends StatefulWidget {
  const LandingPageFirst({super.key});

  @override
  State<LandingPageFirst> createState() => _LandingPageFirstState();
}

class _LandingPageFirstState extends State<LandingPageFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LandingPage(),
                              ),
                            );
        },
        child: Image.asset('assets/spotifyIconWhite.png')),
    ),
    );
  }
}