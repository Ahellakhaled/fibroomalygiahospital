import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../general_screen/notficationmodel.dart';




class CustomDoctorNotificationContainer extends StatelessWidget {
  final int index ;
  const CustomDoctorNotificationContainer({super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: width,
        height: height * .15,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: width * .17,
                    height: height * .08,
                    decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Iconsax.notification,
                      color: AppColors.whiteColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    NotificationModel.doctornoti[index].Time,
                    style: AppTextStyle.styleRegular15.copyWith(
                        color: AppColors.blackTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NotificationModel.doctornoti[index].Name,
                    style: AppTextStyle.styleMedium18,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: width * .65,
                    child:  Text(
                      NotificationModel.doctornoti[index].Message,
                      style: AppTextStyle.styleRegular15,
                      maxLines: 5,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
