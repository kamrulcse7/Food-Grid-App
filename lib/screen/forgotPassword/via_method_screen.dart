import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_grid/screen/forgotPassword/reset_password.dart';
import 'package:food_grid/widget/custom_bg.dart';

import '../../const.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_leading_button.dart';

class ViaMethodScreen extends StatelessWidget {
  const ViaMethodScreen({super.key});

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
                padding: EdgeInsets.only(top: 20.0, bottom: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forgot password?",
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
                      "Select which contact details should we \nuse to reset your password",
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
                    viaMethodBtn(
                      onTap: (){},
                      img: "message.svg",
                      forgotType: "via sms:",
                      forgotValue: "**** **** 7261",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    viaMethodBtn(
                      onTap: (){},
                      img: "email.svg",
                      forgotType: "via Email:",
                      forgotValue: "*****@gmail.com",
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
                      nextPage(ResetPasswordScreen()),
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

  viaMethodBtn({VoidCallback? onTap, String? img,  String? forgotType, String? forgotValue}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 25.0, top: 36, bottom: 36.0),
        height: 125.0,
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            SvgPicture.asset("assets/icon/$img"),
            SizedBox(
              width: 16.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${forgotType ?? ''}",
                  style: myTextStyle(
                      size: 16.0, fw: FontWeight.w400, clr: Color(0xFFC0C0C0)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "${forgotValue ?? ''}",
                  style: myTextStyle(
                      size: 16.0, fw: FontWeight.w400, clr: Color(0xFFC0C0C0)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
