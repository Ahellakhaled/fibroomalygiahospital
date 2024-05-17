import 'package:fibrohospital/screens/ui/patient/patient_home/widgets/custom_all_records_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../../utils/styles/Text_style/app_text_style.dart';
import 'widgets/custom_add_record_show_model.dart';

class MedicalAllRecordsScreen extends StatelessWidget {
  const MedicalAllRecordsScreen({super.key});
  static const String routeName = 'MedicalAllRecordsScreen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack (
          children: [
            const CustomBackground(),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomArrowBack(),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        AppStrings.medicalRecords,
                        style: AppTextStyle.styleMedium18,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:  EdgeInsets.only(right: 20.0,left: 20,bottom: 10),
                        child:  CustomAllRecordsContainer(),
                      );
                    },),
                ),
                const SizedBox(height: 10,),
                 Padding(
                  padding:  EdgeInsets.only(bottom: 20.0),
                  child: CustomButton(text: AppStrings.addRecord,onTap: (){
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      builder: (context) {
                        return const CustomAddRecordShowModel();
                      },
                    );
                  },),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
