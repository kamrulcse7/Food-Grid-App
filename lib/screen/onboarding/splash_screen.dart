import 'dart:async';

import 'package:flutter/material.dart';

import 'first_onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 2200), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FirstOnboardingScreen(),
        ),
      );
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icon/splashbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Image.asset("assets/icon/logo.png"),
      ),
    );
  }
}
