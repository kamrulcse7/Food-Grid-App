import 'package:flutter/material.dart';
import 'package:food_grid/screen/signUp/sign_up_screen.dart';
import 'package:food_grid/widget/custom_bg.dart';
import 'package:food_grid/widget/custom_icon_text_field.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../const.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';
import 'onboarding/second_onboarding_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
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
            child: Image.asset("assets/images/bg_pattern.png"),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        appLogo(),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Login to your account",
                          style: myTextStyle(
                            clr: Colors.white,
                            size: 22,
                            fw: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25.0, 45.0, 25.0, 20.0),
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          obscureText: false,
                          hintText: "Email",
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        CustomTextField(
                          controller: _passController,
                          obscureText: true,
                          hintText: "Password",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(26.0, 0.0, 26.0, 35.0),
                    child: Column(
                      children: [
                        Text(
                          "Or Continue With",
                          style: myTextStyle(
                            clr: Color(0xFFFFFFFF),
                            size: 12.0,
                            fw: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            children: [
                              socialSignInButton(
                                onTap: () {},
                                img: "assets/icon/facebook.png",
                                text: "Facebook",
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              socialSignInButton(
                                onTap: () {},
                                img: "assets/icon/google_logo.png",
                                text: "Google",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot your password?",
                            style: myTextStyle(
                              clr: Color(0xFFFFA300),
                              size: 12.0,
                              fw: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: SignUpScreen(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          isIos: true,
                        ),
                      );
                    },
                    title: "Login",
                    height: 51.0,
                    width: 157.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  socialSignInButton({
    String? img,
    String? text,
    VoidCallback? onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.fromLTRB(22.0, 15.0, 0.0, 15.0),
          decoration: BoxDecoration(
              color: Color(0xFF252525),
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            children: [
              Image.asset("${img}"),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "${text}",
                style: myTextStyle(
                  clr: Color(0xFFFFFFFF),
                  fw: FontWeight.w500,
                  size: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
