import 'package:bookia/core/theme/constant/app_images.dart';
import 'package:bookia/core/theme/constant/app_text.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/theme/constant/app_color.dart';
import 'package:bookia/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.welcomeBackground, fit: BoxFit.cover),
          ), Positioned(
            top: 135,
            left: 84,
            right: 82,
            child: Column(
              children: [
                SvgPicture.asset(AppImages.splashLogo),
                SizedBox(height: 28.h),
                CustomText(text: AppText.splashText, fontSize: 20),
              ],
            ),
          ),
          Positioned(
            bottom: 165,
            left: 20,
            right: 20,
            child: CustomButton(
              text: "Login",
              backgroundColor: AppColor.primaryColor,
              foregroundColor: AppColor.backGroundColor,
              fontSize: 15,
            ),
          ),
          Positioned(
            bottom: 94,
            left: 22,
            right: 22,
            child: CustomButton(
              text: "Register",
              backgroundColor: AppColor.backGroundColor,
              foregroundColor: AppColor.textColor,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
