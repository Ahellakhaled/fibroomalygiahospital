import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomNoAvailiableTimeWidget extends StatelessWidget {
  const CustomNoAvailiableTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.noSlotsAvailable,
          style: AppTextStyle.styleRegular15,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.greenColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 20),
              child: Text(
                'Next availability on wed, 24 Feb',
                style: AppTextStyle.styleMedium18
                    .copyWith(color: AppColors.whiteColor),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'OR',
          style: AppTextStyle.styleRegular15,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                        color: AppColors.lightGreenColor))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 20),
              child: Text(
                'Contact Clinic',
                style: AppTextStyle.styleMedium18
                    .copyWith(color: AppColors.greenColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
