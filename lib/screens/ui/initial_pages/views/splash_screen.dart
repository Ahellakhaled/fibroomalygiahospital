import 'package:fibrohospital/core/local_database/catch_helper.dart';
import 'package:fibrohospital/screens/ui/initial_pages/views/on_boarding_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/join_us_screen.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/local_database/services_locator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigator();
  }


  void navigator() {
    bool isVisited = getIt<CacheHelper>().getData(key: 'isVisited') ?? false;
    Future.delayed(const Duration(seconds: 5), () {
      isVisited
          ? Navigator.pushReplacementNamed(context, JoinUsScreen.routeName)
          : Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const CustomBackground(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.splashScreenIcon),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.fibromyalgiaHospital,
                    style: AppTextStyle.styleRegular25,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
