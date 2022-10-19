import 'package:flutter/material.dart';

import '../const.dart';

class CustomIconTextField extends StatelessWidget {
  CustomIconTextField({
    super.key,
    this.prefixIcon,
    this.keytype,
    this.lebelText,
    this.maxNumber,
    this.validator,
    this.data,
    this.hintText,
    this.initialText,
    this.suffixIcon,
    this.formatter,
    required this.obscureText,
    required this.controller,
  });

  final TextEditingController controller;
  final dynamic data;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final TextInputType? keytype;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 6.0),
      child: TextFormField(
        //showCursor: true,
        minLines: 1,
        maxLines: maxNumber ?? 1,
        initialValue: initialText,
        keyboardType: keytype,
        controller: controller,
        inputFormatters: formatter,
        // autocorrect: true,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        //onSaved: (String value) => data[keyy] = value,
        // onChanged: (initialText) => {},

        autofocus: false,
        style: TextStyle(
            fontSize: 16.0, color: Colors.white, letterSpacing: 1.0),
        decoration: InputDecoration(
          fillColor: Color(0xFF252525),
          filled: true,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   gapPadding: 5.0,
          //   borderSide: BorderSide(width: 1.0),
          // ),
          border: InputBorder.none,
          labelText: lebelText,
          suffixIcon: suffixIcon,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 10.0),
            width: 50.0,
            decoration: BoxDecoration(
              // color: Colors.grey.shade400,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10.0),
              ),
            ),
            child: Icon(
              prefixIcon,
              color: Color(0xFFA1A1A1),
            ),
          ),
          labelStyle: TextStyle(color: Colors.black54, fontSize: 16),
          hintText: hintText,
          hintStyle: myTextStyle(
          clr: Color(0xFF8A8A8A),
          fw: FontWeight.w400,
          size: 14.0,
        ),
          contentPadding: EdgeInsets.fromLTRB(36.0, 18.0, 24.0, 18.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 0.8),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
