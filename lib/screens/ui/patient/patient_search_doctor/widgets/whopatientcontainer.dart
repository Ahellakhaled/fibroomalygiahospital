import 'package:fibrohospital/screens/ui/general_screen/19011screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/misrscreen.dart';
import 'package:fibrohospital/screens/ui/general_screen/seifscreen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/whopatientmodel.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WhoPatientContainer extends StatelessWidget {


  final WhoIsPatientModel patientmodel;
  final int index;

  WhoPatientContainer ({
    required this.index,
    required this.patientmodel,});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: width *.500,
        height: 140,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: width * .4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.whiteColor),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                Image.asset(
                  (patientmodel.imagePath),
                  width: width,
                  height: height*.14,

                ),
                const SizedBox(
                  height: 10,
                ),

                Text(
                  "${patientmodel.title}",
                  style: AppTextStyle.styleMedium18,
                ),
                const SizedBox(
                  height: 3,
                ),


              ],
            ),
          ),

        ),
      ),

    );
  }
}