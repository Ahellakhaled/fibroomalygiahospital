import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/custom_availiable_time_widget.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/custom_date_time_container.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/custom_no_availiable_time_widget.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectTimeScreen extends StatelessWidget {
  SelectTimeScreen({super.key});
  static const String routeName = 'SelectTimeScreen';
  bool isAvailable = true;

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
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomArrowBack(),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          AppStrings.selectTime,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //const CustomSearchDoctorsContainer(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const CustomDateTimeContainer();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  isAvailable == true
                      ? const CustomAvailiableTimeWidget()
                      : const CustomNoAvailiableTimeWidget(),
                  const Expanded(child: SizedBox()),
                  const Center(child: CustomButton(text: 'Saved')),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
