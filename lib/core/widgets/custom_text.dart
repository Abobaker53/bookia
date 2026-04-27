import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontSize, this.color});

  final String text;
 final double fontSize;
 final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSerifDisplay(
        fontWeight: FontWeight.w400,
        fontSize: fontSize.sp,
        color: color,
      ),
    );
  }
}
