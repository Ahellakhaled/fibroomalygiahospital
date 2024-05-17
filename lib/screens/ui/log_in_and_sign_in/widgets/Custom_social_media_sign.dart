import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaContainer extends StatelessWidget {
  final String text;
  final String image;

  const CustomSocialMediaContainer(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.appBackgroundColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyle.styleMedium18.copyWith(
                color: AppColors.greyTextColor, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
