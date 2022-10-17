import 'package:flutter/material.dart';

import '../const.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.onTap,
    this.height,
    this.width,
    this.title,
  }) : super(key: key);
  VoidCallback onTap;
  double? width;
  double? height;
  String? title;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: kPrimaryColor),
        child: Text(
          "${title}",
          style: myTextStyle(size: 16.0, fw: FontWeight.w600),
        ),
      ),
    );
  }
}
