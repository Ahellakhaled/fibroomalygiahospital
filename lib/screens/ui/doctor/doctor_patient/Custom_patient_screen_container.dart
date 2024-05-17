import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'data/custompatientmodel.dart';

class CustomPatientScreenContainer extends StatelessWidget {
  final int index;
  const CustomPatientScreenContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * .23,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.whiteColor),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${PatientModel.patient[index].imagePath}",
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: width * .467,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          PatientModel.patient[index].Name,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          PatientModel.patient[index].Description,
                          style: AppTextStyle.styleRegular15
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          PatientModel.patient[index].Time,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.accept,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.greenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Text(
                        AppStrings.decline,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.whiteColor),
                      ),
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
