import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_grid/const.dart';
import 'package:food_grid/screen/onboarding/second_onboarding_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../widget/custom_button.dart';

class FirstOnboardingScreen extends StatelessWidget {
  const FirstOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onbording_img1.png"),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Find Your Comfort\nFood here",
                    style: myTextStyle(
                      clr: Colors.white,
                      size: 22,
                      fw: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Here You can find chef or dish for every \nTaste and color. Enjoy!",
                    style: myTextStyle(
                        clr: Colors.white,
                        size: 12.0,
                        fw: FontWeight.w400,
                        height: 1.6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CustomButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  nextPage(SecondOnboardingScreen()),
                );
              },
              title: "Next",
              height: 51.0,
              width: 157.0,
            ),
          ],
        ),
      ),
    );
  }
}
