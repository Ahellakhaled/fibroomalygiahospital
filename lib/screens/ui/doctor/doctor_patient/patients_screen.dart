import 'package:fibrohospital/screens/ui/doctor/doctor_patient/Custom_patient_screen_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import 'data/custompatientmodel.dart';

class PatientScreen extends StatelessWidget {
  const PatientScreen({super.key});
  static const String routeName = 'PatientScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
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
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 10),
                      child: Text(
                        AppStrings.patient,
                        style: AppTextStyle.styleRegular25,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomSearchBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                        itemCount: PatientModel.patient.length,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: CustomPatientScreenContainer(index: index,),
                      );
                    },
                  )),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
