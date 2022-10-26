import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const.dart';
import '../../widget/custom_button.dart';

class SuccessNotificationScreen extends StatelessWidget {
  SuccessNotificationScreen({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // child: Image.asset("assets/images/bg_pattern.png"),
            child: SvgPicture.asset(
              "assets/images/bg_pattern3.svg",
              fit: BoxFit.cover,
              color: Color(0xFF7D6D07).withOpacity(0.4),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/icon/congrats.png'),
                  SvgPicture.asset("assets/icon/congrats2.svg"),
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
                    "Password Reset Succesful",
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
                      Navigator.pop(context);
                    },
                    height: 51.0,
                    width: 157.0,
                    title: "Back",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
