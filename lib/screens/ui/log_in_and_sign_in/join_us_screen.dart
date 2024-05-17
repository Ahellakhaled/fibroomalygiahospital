import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_join_as_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';

import 'package:flutter/material.dart';


class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key});
  static const String routeName = "JoinUsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  const Text(
                    AppStrings.joinAs,
                    style: AppTextStyle.styleRegular28,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PatientLogIn.routeName);
                    },
                    child: const CustomJoinAsContainer(
                        image: AppAssets.patientIcon,
                        textName: AppStrings.patient),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(DoctorLogIn.routeName);
                    },
                    child: const CustomJoinAsContainer(
                        image: AppAssets.doctorIcon,
                        textName: AppStrings.doctor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
