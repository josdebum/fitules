
//  App-Styling for texts

import "package:flutter/material.dart";

import 'package:google_fonts/google_fonts.dart';

class AppStyle  {
  static final fontFamily = GoogleFonts.poppins().fontFamily;
  static  TextStyle title = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 36,
      letterSpacing: -0.02,
      fontFamily: fontFamily);


  static TextStyle header1 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 52,
      letterSpacing: -0.02,
      fontFamily:fontFamily);
  static TextStyle header2 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 44,
      letterSpacing: -0.02,
      fontFamily:fontFamily);

  static  TextStyle header3 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 40,
    letterSpacing: -0.02,
     fontFamily:fontFamily
  );

  static  TextStyle subtitle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, fontFamily: fontFamily);

  static TextStyle body = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 28,
      // letterSpacing: 1.4,
      fontFamily: fontFamily);

  static  TextStyle small = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16, fontFamily: fontFamily);

  static  TextStyle style1 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 18, fontFamily: fontFamily);

  static  TextStyle style2= TextStyle(
      fontWeight: FontWeight.w400, fontSize: 15, fontFamily: fontFamily);

  static  TextStyle preTitle = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 20, fontFamily:fontFamily);

  static  TextStyle buttonText = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 18, fontFamily: fontFamily);

  static TextStyle link = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16, fontFamily: fontFamily);
}
