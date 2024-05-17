import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/utils/widgets/custom_chat_container.dart';
import 'package:fibrohospital/screens/ui/patient/patient_chat/patient_messages_screen.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../doctor/doctor_chat/data/doctorchatmodel.dart';

class PatientChatScreen extends StatelessWidget {
  const PatientChatScreen({super.key});
  static const String routeName = 'PatientChatScreen';

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
                    padding:  EdgeInsets.only(top: 20.0,),
                    child:  Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 10),
                      child: Text(
                        AppStrings.chat,
                        style: AppTextStyle.styleRegular25,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                        itemCount: DoctorChatModel.patient.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, DoctorMessageScreen.routeName);
                        },
                        child:  CustomChatContainer(
                          subtitle:DoctorChatModel.patient[index].Message,
                          title: DoctorChatModel.patient[index].Name,
                          imagePath: DoctorChatModel.patient[index].imagePath,
                        ),
                      );
                    },
                  )),
                  const SizedBox(height: 90,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
