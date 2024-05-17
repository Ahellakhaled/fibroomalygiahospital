import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/custom_time_available_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAvailiableTimeWidget extends StatelessWidget {
  const CustomAvailiableTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.afternoonAvailAppoint,style: AppTextStyle.styleMedium18.copyWith(fontSize: 15),),
        SizedBox(height: 10,),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomTimeAvailableContainer(text: '1:00 PM',);
            },
          ),
        ),
        SizedBox(height: 30,),
        Text(AppStrings.eveningAvailAppoint,style: AppTextStyle.styleMedium18.copyWith(fontSize: 15),),
        SizedBox(height: 10,),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomTimeAvailableContainer(text: '8:00 PM',);
            },
          ),
        ),


      ],


    );
  }
}
