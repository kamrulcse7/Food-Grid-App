import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_grid/const.dart';

import 'first_onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 2200), () {
      Navigator.pushReplacement(
        context,
        nextPage(FirstOnboardingScreen()),
      );
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: appLogo(),
      ),
    );
  }
}
