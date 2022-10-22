import 'package:flutter/material.dart';
import 'package:food_grid/const.dart';
import 'package:food_grid/screen/payment_method_screen.dart';
import 'package:food_grid/widget/custom_bg.dart';
import 'package:food_grid/widget/custom_button.dart';
import 'package:food_grid/widget/custom_text_field.dart';
import 'package:get/get.dart';

import '../../widget/custom_leading_button.dart';

class SigunupProcessScreen extends StatelessWidget {
  SigunupProcessScreen({super.key});
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomBg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(0),
        //     child: CustomLeadingButton(
        //       onTap: () {},
        //     ),
        //   ),
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 25.0, top: 44.0, right: 25.0),
          child: SingleChildScrollView(
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
                        "Fill in your bio to get \nstarted",
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
                        "This data will be displayed in your account \nprofile for secuity",
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
                        controller: _fNameController,
                        obscureText: false,
                        hintText: "First Name",
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CustomTextField(
                        controller: _fNameController,
                        obscureText: false,
                        hintText: "Last Name",
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CustomTextField(
                        controller: _fNameController,
                        obscureText: false,
                        hintText: "Mobile Number",
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
                        nextPage(PaymentMethodScreen()),
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
      ),
    );
  }
}
