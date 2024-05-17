import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../patient_home/data/mydoctorsmodel.dart';

class CustomMyDoctorsContainer extends StatelessWidget {
  final int index;
  const CustomMyDoctorsContainer({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * .29,
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    MyDoctorModel.DoctorModel[index].imagePath,
                  ),
                ),
                const SizedBox(
                  width: 10,
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
                          MyDoctorModel.DoctorModel[index].Name,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          MyDoctorModel.DoctorModel[index].SubTittle,
                          style: AppTextStyle.styleRegular15
                              .copyWith(color: AppColors.greenColor),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          MyDoctorModel.DoctorModel[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              MyDoctorModel.DoctorModel[index].FirstRatio,
                              style: AppTextStyle.styleRegular15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              MyDoctorModel.DoctorModel[index].SecRatio,
                              style: AppTextStyle.styleRegular15,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.heart,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.doctorDate,
                  style: AppTextStyle.styleMedium18
                      .copyWith(color: AppColors.greenColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  MyDoctorModel.DoctorModel[index].Date,
                  style: AppTextStyle.styleMedium18
                      .copyWith(color: AppColors.greyTextColor),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: width,
                child: const CustomButton(text: AppStrings.booked))
          ],
        ),
      ),
    );
  }
}
