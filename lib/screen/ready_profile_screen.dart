import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const.dart';
import '../widget/custom_button.dart';

class ReadyProfileScreen extends StatelessWidget {
  const ReadyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/icon/congrats.png'),
            SvgPicture.asset("assets/icon/congrats.svg"),
            SizedBox(
              height: 35.0,
            ),
            Text(
              "Congrats!",
              style: myTextStyle(
                clr: Color(0xFFFFA300),
                fw: FontWeight.w600,
                size: 35.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Your profile is ready to use!",
              style: myTextStyle(
                clr: Colors.white,
                fw: FontWeight.w600,
                size: 25.0,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            CustomButton(
              onTap: () {
                // Navigator.of(context).push(
                //   nextPage(SetLocationScreen()),
                // );
              },
              height: 51.0,
              width: 157.0,
              title: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
