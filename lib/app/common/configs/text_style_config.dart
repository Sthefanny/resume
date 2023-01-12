import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_config.dart';

class TextStyleConfig {
  static TextStyle h1 = TextStyle(
    fontSize: 50.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w800,
    color: ColorConfig.background,
  );

  static TextStyle h2 = TextStyle(
    fontSize: 30.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    color: ColorConfig.background,
  );

  static TextStyle title = TextStyle(
    fontSize: 28.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    color: ColorConfig.background,
  );

  static TextStyle body = TextStyle(
    fontSize: 18.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: ColorConfig.background,
  );

  static TextStyle infoTitle = TextStyle(
    fontSize: 20.5.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w600,
    color: ColorConfig.background,
  );

  static TextStyle infoBody = TextStyle(
    fontSize: 20.5.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: ColorConfig.background,
  );

  static TextStyle dateBody = TextStyle(
    fontSize: 18.sp,
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontWeight: FontWeight.w400,
    color: ColorConfig.darkGrey,
  );
}
