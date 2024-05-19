import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class InformationAboutDisease extends StatelessWidget {
  const InformationAboutDisease({super.key});
  static const String routeName = 'InformationAboutDisease';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomArrowBack(),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          AppStrings.information,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Text(
                          AppStrings.information1Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information1Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information2Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information2Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information2Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information2Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information2Desc3,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information3Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information3Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information3Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information3Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information3Desc3,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information4Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information4Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information4Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information4Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information5Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information5Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information5Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information5Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information6Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information6Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information6Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information6Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information6Desc3,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.information7Tittle,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information7Desc,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information7Desc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.information7Desc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}