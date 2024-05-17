import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomJoinAsContainer extends StatelessWidget {
  final String textName;
  final String image;

  const CustomJoinAsContainer(
      {super.key, required this.image, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.greyWhite,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
              ),
              child: SvgPicture.asset(
                image,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              textName,
              style: AppTextStyle.styleMedium18,
            )
          ],
        ),
      ),
    );
  }
}
