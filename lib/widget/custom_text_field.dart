
import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.hintText,
    required this.controller,
    required this.obscureText,
    this.keyboardType,
    this.suffixIcon,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscuringCharacter: '*',
      obscureText: obscureText,
      autofocus: false,
      keyboardType: keyboardType,
      
      style: TextStyle(
          fontSize: 16.0,
          color: Color(0xFFfefefe),
          letterSpacing: 1.0),
      decoration: InputDecoration(
        fillColor: Color(0xFF252525),
        filled: true,
        suffixIcon: suffixIcon,
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        //   gapPadding: 5.0,
        //   borderSide: BorderSide(width: 1.0),
        // ),
        
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: myTextStyle(
          clr: Color(0xFF8A8A8A),
          fw: FontWeight.w400,
          size: 14.0,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xFF000000), width: 0.8),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xFF000000), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
