import 'package:flutter/material.dart';

class CustomLeadingButton extends StatelessWidget {
  CustomLeadingButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44.0,
        height: 38.0,
        decoration: BoxDecoration(
            color: Color(0xFF2F2823), borderRadius: BorderRadius.circular(8.0)),
        alignment: Alignment.center,
        child: Icon(
          Icons.arrow_back_ios,
          color: Color(0xFFDA6317),
        ),
      ),
    );
  }
}
