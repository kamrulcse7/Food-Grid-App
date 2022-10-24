import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

const kPrimaryColor = Colors.amber;

myTextStyle(
    {double? size,
    Color? clr,
    FontWeight? fw,
    FontStyle? fStyle,
    double? lSpace,
    double? height,
    TextDecoration? decoration}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: clr,
    fontWeight: fw,
    letterSpacing: lSpace,
    fontStyle: fStyle,
    height: height,
    decoration: decoration,
  );
}

appLogo() {
  return Container(
    width: 192.0,
    height: 175.0,
    child: SvgPicture.asset("assets/icon/app_logo.svg"),
  );
}

  PageTransition<dynamic> nextPage(page) {
    return PageTransition(
      child: page,
      type: PageTransitionType.rightToLeft,
      duration: Duration(milliseconds: 600),
      reverseDuration: Duration(milliseconds: 600),
      isIos: true,
    );
  }
