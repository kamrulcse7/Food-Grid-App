import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:food_grid/widget/custom_bg.dart';
import 'package:food_grid/widget/custom_button.dart';
import 'package:food_grid/widget/custom_leading_button.dart';

import '../const.dart';
import 'ready_profile_screen.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 25.0, top: 44.0, right: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLeadingButton(
                onTap: () => Navigator.pop(context),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Set Your Location",
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
                      "This data will be displayed in your account \nprofile for security",
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
                height: 187,
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                    color: Color(0xFF252525),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Image.asset('assets/icon/location.png'),
                        SvgPicture.asset("assets/icon/location.svg"),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "Set Your Location",
                          style: myTextStyle(
                            clr: Colors.white,
                            fw: FontWeight.w600,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 52.0,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF404040),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(
                          "Set Location",
                          style: myTextStyle(
                            clr: Colors.white,
                            fw: FontWeight.w600,
                            size: 16.0,
                          ),
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
                      nextPage(ReadyProfileScreen()),
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
