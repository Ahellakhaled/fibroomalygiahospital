import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'data/patientappointmentmodel.dart';

class CustomPatientAppointmentContainer extends StatelessWidget {
  final int index;
  const CustomPatientAppointmentContainer({
    super.key,
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
        height: height * .1,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset(
              "${PatientAppointmentModel.appointment[index].imagePath}",
            ),
            title: Text(
              PatientAppointmentModel.appointment[index].Name,
              style: AppTextStyle.styleMedium18,
            ),
            subtitle: Text(
              PatientAppointmentModel.appointment[index].Description,
              style: AppTextStyle.styleRegular15,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Container(
              height: height * .05,
              width: width * .2,
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                  child: Text(
                PatientAppointmentModel.appointment[index].Time,
                style: AppTextStyle.styleRegular15
                    .copyWith(color: AppColors.whiteColor),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
