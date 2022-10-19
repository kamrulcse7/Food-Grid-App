import 'package:flutter/material.dart';
import 'package:food_grid/screen/login_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../const.dart';
import '../../widget/custom_button.dart';

class SecondOnboardingScreen extends StatelessWidget {
  const SecondOnboardingScreen({super.key});

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
            Image.asset("assets/images/onbording_img2.png"),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Find FoodGrid is Where Your \nComfor Food Lives ",
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
                    "Enjoy a fast and smoth food delivery at \nyour doorshetp",
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
                Navigator.push(
                  context,
                  PageTransition(
                    child: LogInScreen(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 600),
                    reverseDuration: Duration(milliseconds: 600),
                    isIos: true,
                  ),
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
