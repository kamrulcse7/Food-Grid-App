import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_grid/screen/upload_photo_screen.dart';
import 'package:food_grid/widget/custom_bg.dart';

import '../const.dart';
import '../widget/custom_button.dart';
import '../widget/custom_leading_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
                        "Payment Method",
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
                      payMethodBtn(
                        img: "paypal.svg",
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      payMethodBtn(
                        img: "visa.svg",
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      payMethodBtn(
                        img: "payoneer.svg",
                        onTap: () {},
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
                        nextPage(UploadPhotoScreen()),
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

  payMethodBtn({required String img, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.0,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF252525),
          borderRadius: BorderRadius.circular(8.0),
        ),
        // child: Image.asset("assets/icon/$img"),
        child: SvgPicture.asset("assets/icon/$img"),
      ),
    );
  }
}
