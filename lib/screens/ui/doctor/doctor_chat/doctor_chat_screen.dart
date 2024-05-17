import 'package:fibrohospital/screens/ui/doctor/doctor_chat/data/doctorchatmodel.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_chat/doctor_messages_screen.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

import '../../../../utils/widgets/custom_chat_container.dart';

class DoctorChatScreen extends StatelessWidget {
  const DoctorChatScreen({super.key});
  static const String routeName = 'DoctorChatScreen';

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
                    height: 30,
                  ),
                  Expanded(
                      child: ListView.builder(
                        itemCount: DoctorChatModel.chat.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, PatientMessagesScreen.routeName);
                        },
                        child:  CustomChatContainer(
                          subtitle:DoctorChatModel.chat[index].Message,
                          title:DoctorChatModel.chat[index].Name,
                          imagePath:DoctorChatModel.chat[index].imagePath,
                        ),
                      );
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
