import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/root_page.dart';

class LoginAccount extends StatefulWidget {
  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              child: Image.asset('assets/loginAccountColorImage.png')),
        ),
        Positioned(
            top: 120,
            left: 80,
            child: Column(
              children: [
                Image.asset('assets/spotifyImageaAndText.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'MIllions of songs, free on spotify',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
        /*  Positioned(
          top: 120,
          left: 80,
          child: Image.asset('assets/spotifyImageaAndText.png'),
        ),
        const Positioned(
          top: 200,
          left: 80,
          child: Text(
            'MIllions of songs, free on spotify',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ), */

        Positioned(
          bottom: 113,
          left: 25,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            width: 342,
            height: 445,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 30),
                  child: Text(
                    'Login Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    width: 280,
                    height: 43,
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                  0xff1ED760,
                                ),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          fillColor: Colors.white,
                          hintText: 'Email or username',
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xff1ED760),
                            ),
                          ),
                          hintStyle: const TextStyle(
                              color: Color(0xff1ED760), fontSize: 13),
                          //fillColor: Color(0xff0E0E0F),
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          suffixIcon: Image.asset('assets/mail.png')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  height: 43,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Password',
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(color: Color(0xff1ED760))),
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                        //fillColor: Color(0xff0E0E0F),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        suffixIcon: Image.asset('assets/eye.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 40, right: 40, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Remember me',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Image.asset('assets/toggle-right.png')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RootPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff1ED760),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    width: 270,
                    height: 50,
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Expanded(
                          child: Divider(
                        thickness: 2,
                        endIndent: 10,
                        indent: 45,
                      )),
                      Text(
                        "or",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 2,
                        indent: 10,
                        endIndent: 45,
                      )),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/facebook.png')
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 35,
          child: SizedBox(
            width: 320,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Sign up now',
                  style: TextStyle(
                      color: Color(0xff1ED760),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
