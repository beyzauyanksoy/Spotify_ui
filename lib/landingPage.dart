import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'getStarted.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const GetStarted(),
                              ),
                            );
        },
        child: Image.asset('assets/spotifyIcon.png')),
    ),
    );
  }
}