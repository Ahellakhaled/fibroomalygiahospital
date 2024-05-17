import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../ahella/Features/Diagnostics/Presentation/views/diagonstics_tests_view.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});
  static const String routeName = 'PatientDetailsScreen';

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  Object? val = -1;
  TextEditingController? patientNameController = TextEditingController();

  TextEditingController? patientContactNumberController =
      TextEditingController();

  TextEditingController? patientAgeController = TextEditingController();

  TextEditingController? patientEmailController = TextEditingController();

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
                          AppStrings.patientDetails,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.whiteColor),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50.0, right: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomProfileTextField(
                            icon: Iconsax.personalcard,
                            labelName: AppStrings.patientName,
                            pController: patientNameController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomProfileTextField(
                            icon: Icons.date_range,
                            labelName: AppStrings.age,
                            pController: patientAgeController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Gander',
                            style: AppTextStyle.styleMedium18,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 'male',
                                      activeColor: AppColors.greenColor,
                                      groupValue: val,
                                      onChanged: (value) {
                                        setState(() {
                                          val = value;
                                        });
                                      }),
                                  Text(
                                    'Male',
                                    style: AppTextStyle.styleRegular15.copyWith(
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 'female',
                                      activeColor: AppColors.greenColor,
                                      groupValue: val,
                                      onChanged: (value) {
                                        setState(() {
                                          val = value;
                                        });
                                      }),
                                  Text(
                                    'Female',
                                    style: AppTextStyle.styleRegular15.copyWith(
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 'others',
                                      activeColor: AppColors.greenColor,
                                      groupValue: val,
                                      onChanged: (value) {
                                        setState(() {
                                          val = value;
                                        });
                                      }),
                                  Text(
                                    'Others',
                                    style: AppTextStyle.styleRegular15.copyWith(
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomProfileTextField(
                            icon: Icons.phone,
                            labelName: AppStrings.contactNumber,
                            pController: patientContactNumberController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomProfileTextField(
                            icon: Icons.email,
                            labelName: AppStrings.email,
                            pController: patientEmailController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  // InkWell(Navigator.pushReplacementNamed(context,DiagnosticsBookView.routeName)),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return DiagnosticsTestView();
                        }));
                      },
                      child: CustomButton(
                        text: 'Done',
                      )),
                  const SizedBox(
                    height: 40,
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

// ToggleButtons(
// isSelected: isSelected,
// selectedColor: Colors.white,
// textStyle: const TextStyle(fontWeight: FontWeight.bold),
// children: const [
// Expanded(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 12),
// child: Row(
// children: [
// CircleAvatar(
// radius: 5,
// backgroundColor: AppColors.greyTextColor,
// ),
// SizedBox(width: 5,),
// Text('male', style: AppTextStyle.styleMedium18),
// ],
// ),
// ),
// ),
// SizedBox(width:10 ,),
// Expanded(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 12),
// child: Row(
// children: [
// CircleAvatar(
// radius: 5,
// backgroundColor: AppColors.greyTextColor,
// ),
// SizedBox(width: 5,),
// Text('female', style: AppTextStyle.styleMedium18),
// ],
// ),
// ),
// ),
// SizedBox(width:10 ,),
// Expanded(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 12),
// child: Row(
// children: [
// CircleAvatar(
// radius: 5,
// backgroundColor: AppColors.greyTextColor,
// ),
// SizedBox(width: 5,),
// Text('others', style: AppTextStyle.styleMedium18),
// ],
// ),
// ),
// ),
// ],
// onPressed: (int newIndex) {
// setState(() {
// // looping through the list of booleans values
// for (int index = 0; index < isSelected.length; index++) {
// // checking for the index value
// if (index == newIndex) {
// // one button is always set to true
// isSelected[index] = true;
// } else {
// // other two will be set to false and not selected
// isSelected[index] = false;
// }
// }
// });
// },
// ),
