import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_grid/screen/login_screen.dart';
import 'package:food_grid/screen/signUp/sigunup_process_screen.dart';
import 'package:food_grid/widget/custom_bg.dart';
import 'package:food_grid/widget/custom_icon_text_field.dart';
import 'package:page_transition/page_transition.dart';

import '../../const.dart';
import '../../widget/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passController = TextEditingController();

  bool _isObscure = true;
  bool _isKSCheck = false;
  bool _isEmailCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/images/bg_pattern.svg",
              fit: BoxFit.cover,
              color: Color(0xFF7D6D07).withOpacity(0.5),
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
                  Container(
                    child: Column(
                      children: [
                        appLogo(),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Sign up for free",
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
                        CustomIconTextField(
                          obscureText: false,
                          controller: _userNameController,
                          hintText: "User name",
                          prefixIcon: Icons.person_outline_sharp,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        CustomIconTextField(
                          obscureText: false,
                          controller: _emailController,
                          hintText: "Email",
                          prefixIcon: Icons.email_outlined,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        CustomIconTextField(
                          obscureText: _isObscure,
                          controller: _passController,
                          hintText: "Password",
                          prefixIcon: Icons.lock_outlined,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: Icon(
                              _isObscure == true
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xFFC4C4C4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.0, bottom: 40.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isKSCheck = !_isKSCheck;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                _isKSCheck == true
                                    ? Icons.check_circle
                                    : Icons.circle_outlined,
                                size: 24.0,
                                color: _isKSCheck == true
                                    ? Color(0xFFFFA300)
                                    : Color(0xFFA1A1A1),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "Keep Me Signed In",
                                style: myTextStyle(
                                  clr: Color(0xFF8A8A8A),
                                  size: 12.0,
                                  fw: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isEmailCheck = !_isEmailCheck;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                _isEmailCheck == true
                                    ? Icons.check_circle
                                    : Icons.circle_outlined,
                                size: 24.0,
                                color: _isEmailCheck == true
                                    ? Color(0xFFFFA300)
                                    : Color(0xFFA1A1A1),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "Email me about special pricing",
                                style: myTextStyle(
                                  clr: Color(0xFF8A8A8A),
                                  size: 12.0,
                                  fw: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        nextPage(SigunupProcessScreen()),
                      );
                    },
                    title: "create account",
                    height: 51.0,
                    width: 170.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "already have an account?",
                        style: myTextStyle(
                          clr: Color(0xFFFFA300),
                          size: 12.0,
                          fw: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
