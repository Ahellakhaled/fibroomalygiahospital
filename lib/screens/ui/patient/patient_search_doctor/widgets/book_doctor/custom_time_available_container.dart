import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTimeAvailableContainer extends StatelessWidget {
final String text ;

  const CustomTimeAvailableContainer({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
            color: AppColors.lightGreenColor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          text,
          style: AppTextStyle.styleRegular15.copyWith(
              color: AppColors.blackTextColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
