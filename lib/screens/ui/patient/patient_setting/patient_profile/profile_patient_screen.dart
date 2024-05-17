import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePatientScreen extends StatefulWidget {

  static const String routeName = 'ProfilePatientScreen';

  @override
  State<ProfilePatientScreen> createState() => _ProfilePatientScreenState();
}

class _ProfilePatientScreenState extends State<ProfilePatientScreen> {
  TextEditingController ?patientNameController = TextEditingController();

  TextEditingController ?patientContactNumberController = TextEditingController();

  TextEditingController ?patientDateofbirthController = TextEditingController();

  TextEditingController ?patientPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: AppColors.greenColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0,left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomArrowBack(),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              AppStrings.profile,
                              style: AppTextStyle.styleMedium18,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      const Text(
                        AppStrings.setUpYourProfile,
                        style: AppTextStyle.styleMedium18,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            child: Image.asset(AppAssets.circlePatientPhoto,
                                fit: BoxFit.scaleDown),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.grey[400]),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Iconsax.camera))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child:  ListView(
                    children:[
                       Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.personalInformation,
                              style: AppTextStyle.styleMedium18,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CustomProfileTextField(
                                icon: Iconsax.personalcard,
                                labelName: AppStrings.name,pController: patientNameController,),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Iconsax.password_check,
                                labelName: AppStrings.password,pController: patientPasswordController,),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Icons.phone,
                                labelName: AppStrings.contactNumber,pController: patientContactNumberController,),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Icons.date_range_rounded,
                                labelName: AppStrings.dateOfBirth,pController: patientDateofbirthController,),
                            SizedBox(
                              height: 25,
                            ),
                            Center(child: CustomButton(text: 'Change my information')),
                            SizedBox(height: 20,),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
