import 'package:fibrohospital/screens/ui/doctor/doctor_patient/custom_patient_appointment_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../doctor_patient/data/patientappointmentmodel.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});
  static const String routeName = 'AppointmentScreen';

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
                          AppStrings.appointments,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TableCalendar(
                    focusedDay: DateTime.now(),
                    headerStyle: HeaderStyle(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.greenColor),
                      headerMargin: const EdgeInsets.only(bottom: 10),
                    ),
                    calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(40))),
                    firstDay: DateTime(2024),
                    lastDay: DateTime.now(),
                    onFormatChanged: (format) {},
                    onDaySelected: (selectedDay, focusedDay) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(child: ListView.builder(
                    itemCount: PatientAppointmentModel.appointment.length,
                    itemBuilder: (context, index) {
                      return  CustomPatientAppointmentContainer(index: index,);
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
