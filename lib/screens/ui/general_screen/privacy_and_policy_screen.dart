import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({super.key});
  static const String routeName = 'Privacy&Policy';

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
                          AppStrings.privacyPolicy,
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
                          AppStrings.fibromyalgiaPrivacyPolicy1,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc1,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy2,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc2,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy3,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc3,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy4,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc4,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy5,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc5,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy6,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc6,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy7,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc7,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy8,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc8,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy9,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc9,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.fibromyalgiaPrivacyPolicy10,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyDesc10,
                          style: AppTextStyle.styleRegular15,
                          maxLines: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          AppStrings.fibromyalgiaPrivacyPolicyFinal,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 20,
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
