import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/bg_img.svg",
            fit: BoxFit.cover,
            color: Color(0xFF7D6D07).withOpacity(0.7),
          ),
          Container(
            alignment: Alignment.center,
            child: appLogo(),
          ),
        ],
      ),
    );
  }
}
