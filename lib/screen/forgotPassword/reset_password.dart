import 'package:flutter/material.dart';
import 'package:food_grid/screen/forgotPassword/success_notification_screen.dart';

import 'package:food_grid/widget/custom_bg.dart';
import 'package:food_grid/widget/custom_text_field.dart';

import '../../const.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_icon_text_field.dart';
import '../../widget/custom_leading_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isObscure = true;
  TextEditingController _newPassController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(left: 25.0, top: 44.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLeadingButton(
                onTap: () => Navigator.pop(context),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reset your password",
                      style: myTextStyle(
                        clr: Colors.white,
                        fw: FontWeight.w600,
                        size: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Select which contact details should \nwe use to reset your password",
                      style: myTextStyle(
                        clr: Color(0xFfC4C4C4),
                        fw: FontWeight.w400,
                        size: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CustomTextField(
                      controller: _newPassController,
                      obscureText: _isObscure,
                      hintText: "New Password",
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
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      controller: _confirmPassController,
                      obscureText: _isObscure,
                      hintText: "Confirm Password",
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
              SizedBox(
                height: 60.0,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  onTap: () {
                    Navigator.of(context).push(
                      nextPage(SuccessNotificationScreen()),
                    );
                  },
                  height: 51.0,
                  width: 157.0,
                  title: "Next",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
