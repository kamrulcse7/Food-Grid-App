import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Colors.amber;

myTextStyle({
  double? size,
  Color? clr,
  FontWeight? fw,
  FontStyle? fStyle,
  double? lSpace,
  double? height
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: clr,
    fontWeight: fw,
    letterSpacing: lSpace,
    fontStyle: fStyle,
    height: height,
  );
}
