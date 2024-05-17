import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDateTimeContainer extends StatelessWidget {
  const CustomDateTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
          color: AppColors.lightGreenColor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tomorrow, 24 Feb',style: AppTextStyle.styleMedium18,),
            SizedBox(height: 5,),
            Text('9 slots available',style: AppTextStyle.styleRegular15,),

          ],
        ),

      ),
    );
  }
}
