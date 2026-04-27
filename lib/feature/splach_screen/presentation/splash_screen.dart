import 'package:bookia/core/theme/constant/app_color.dart';
import 'package:bookia/core/theme/constant/app_images.dart';
import 'package:bookia/core/theme/constant/app_text.dart';
import 'package:bookia/core/widgets/custom_text.dart';
import 'package:bookia/feature/welcome_screen/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.splashLogo),
            SizedBox(height: 9),
            CustomText(text: AppText.splashText, fontSize: 18,),
          ],
        ),
      ),
    );
  }
}
