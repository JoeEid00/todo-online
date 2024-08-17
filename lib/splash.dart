

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName ="Splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override


  void initState() {
    Future.delayed (Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center( // Center the entire column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the logo vertically
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 262,
              height: 262,
            ),
          ],
        ),
      ),
    );
  }
}