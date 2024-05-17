import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: .2,
        child: SvgPicture.asset(
          AppAssets.backgroundApp,
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
