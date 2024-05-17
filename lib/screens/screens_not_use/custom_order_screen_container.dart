import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOrderScreenContainer extends StatelessWidget {
final String text ;
final String imagePath ;

  const CustomOrderScreenContainer({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Container(
      width: width/2,
      height: height*.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.lightGreenColor,
              radius: 40,
              child: SvgPicture.asset(imagePath,fit: BoxFit.scaleDown,),
            ),
            const SizedBox(height: 15,),
            Text(text,style: AppTextStyle.styleRegular15,textAlign: TextAlign.center,)
          ],
        ),
      ),

    );
  }
}
