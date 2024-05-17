import 'package:fibrohospital/screens/ui/doctor/doctor_setting/doctor_setting_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_chat/doctor_chat_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_home/doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_patient/patients_screen.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class GeneralDoctorHomeScreen extends StatefulWidget {
  const GeneralDoctorHomeScreen({super.key});
  static const String routeName = 'GeneralDoctorHomeScreen';

  @override
  State<GeneralDoctorHomeScreen> createState() =>
      _GeneralDoctorHomeScreenState();
}

class _GeneralDoctorHomeScreenState extends State<GeneralDoctorHomeScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          tabs[selectedIndex],
          Positioned(
            bottom: 1,
            right: 10,
            left: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: size.width * .15,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(right: 5, left: 8),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(
                      () {
                        selectedIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: size.width * .03),
                      Icon(
                        listOfIcons[index],
                        size: size.width * .076,
                        color: index == selectedIndex
                            ? AppColors.greenColor
                            : AppColors.greyTextColor,
                      ),
                      RotatedBox(
                        quarterTurns: 2,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          margin: EdgeInsets.only(
                            bottom:
                                index == selectedIndex ? 0 : size.width * .029,
                            right: size.width * .0422,
                            left: size.width * .0422,
                          ),
                          width: size.width * .120,
                          height:
                              index == selectedIndex ? size.width * .014 : 0,
                          decoration: const BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> tabs = [
    const DoctorHomeScreen(),
    const PatientScreen(),
    const DoctorChatScreen(),
    const DoctorSettingScreen(),
  ];

  List<IconData> listOfIcons = [
    Icons.home,
    Icons.paste,
    Icons.message_outlined,
    Icons.settings,
  ];
}
