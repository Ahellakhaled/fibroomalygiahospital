import 'package:cloud_firestore/cloud_firestore.dart';
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

class ProfileDoctorScreen extends StatefulWidget {

  static const String routeName = 'ProfileDoctorScreen';

  @override
  State<ProfileDoctorScreen> createState() => _ProfileDoctorScreenState();
}

class _ProfileDoctorScreenState extends State<ProfileDoctorScreen> {
  TextEditingController ?doctorNameController = TextEditingController();

  TextEditingController ?doctorContactNumberController = TextEditingController();

  TextEditingController ?doctorDateofbirthController = TextEditingController();

  TextEditingController ?doctorLocationController = TextEditingController();

  TextEditingController ?doctorBiographyController = TextEditingController();

  CollectionReference doctordata = FirebaseFirestore.instance.collection('doctordata');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return doctordata
        .add({
      ' name': doctorNameController!.text,
      'contactnumber': doctorContactNumberController!.text,
      'age': doctorDateofbirthController!.text ,
      'location': doctorLocationController!.text,
      'biography': doctorBiographyController!.text ,
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
             CustomBackground(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .38,
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
                        padding: EdgeInsets.only(top: 20.0, left: 20),
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        AppStrings.setUpYourProfile,
                        style: AppTextStyle.styleMedium18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppStrings.updateYourProfileDoctor,
                        style: AppTextStyle.styleRegular15.copyWith(
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            child: Image.asset(AppAssets.circleDoctorPhoto,
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
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppStrings.personalInformation,
                              style: AppTextStyle.styleMedium18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Iconsax.personalcard,
                                labelName: AppStrings.name,  pController: doctorNameController),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Icons.phone,
                                labelName: AppStrings.contactNumber,pController: doctorContactNumberController,),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Icons.date_range_rounded,
                                labelName: AppStrings.dateOfBirth,
                              pController: doctorDateofbirthController,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Iconsax.map,
                                labelName: AppStrings.location,
                              pController: doctorLocationController,),
                            SizedBox(
                              height: 10,
                            ),
                            CustomProfileTextField(
                                icon: Iconsax.document_text,
                                labelName: AppStrings.addBiography,   pController: doctorBiographyController,),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: CustomButton(
                                    text: "Change my information")),
                            SizedBox(
                              height: 20,
                            ),
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
