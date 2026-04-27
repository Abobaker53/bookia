import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.fontSize,
  });

  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final void Function()? onPressed;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(horizontal: 22),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize:WidgetStateProperty.all(
             Size(double.infinity, 55.h)),
          backgroundColor:WidgetStateProperty.all(backgroundColor) ,
          foregroundColor: WidgetStateProperty.all(foregroundColor),
          shape:  WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
        ),

        child: CustomText(text: text, fontSize: fontSize),
      ),
    );
  }
}
