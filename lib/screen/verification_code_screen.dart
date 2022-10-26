import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_grid/widget/custom_bg.dart';

import '../const.dart';
import '../widget/custom_button.dart';
import '../widget/custom_leading_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

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
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter 4-digit \nverification  code",
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
                      "Code send to +88091576****. this code will \nexpired in 01:30",
                      style: myTextStyle(
                        clr: Color(0xFfC4C4C4),
                        fw: FontWeight.w400,
                        size: 12.0,
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
                      // Navigator.of(context).push(
                      //   nextPage(UploadPhotoScreen()),
                      // );
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
