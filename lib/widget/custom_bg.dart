import 'package:flutter/material.dart';

class CustomBg extends StatelessWidget {
  final Widget child;
  const CustomBg({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/bg_pattern2.png"),
          ),
          child,
        ],
      ),
    );
  }
}
