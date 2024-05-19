import 'package:fibrohospital/screens/ui/general_screen/Notifications_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/help_center_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/privacy_and_policy_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/join_us_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/profile_patient_screen.dart';
import 'package:fibrohospital/utils/data/setting_model.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../general_screen/information.dart';


class PatientSettingScreen extends StatefulWidget {
  const PatientSettingScreen({super.key});
  static const String routeName = 'PatientSettingScreen';

  @override
  State<PatientSettingScreen> createState() => _PatientSettingScreenState();
}

class _PatientSettingScreenState extends State<PatientSettingScreen> {
  bool isChecked = false;

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          AppStrings.settings,
                          style: AppTextStyle.styleRegular25,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ProfilePatientScreen.routeName);
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.deepPurpleAccent,
                              child: Icon(Icons.person,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.profile,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, NotificationsScreen.routeName);
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                              child: Icon(Icons.notifications_active,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.notifications,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0, right: 17),
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                      'Choose your favourite language',
                                      style: AppTextStyle.styleMedium18,
                                    ),
                                    content: SizedBox(
                                      height: 85,
                                      width: 50,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  SettingModel
                                                      .lanItem[index].title,
                                                  style: AppTextStyle
                                                      .styleRegular15
                                                      .copyWith(
                                                          color: AppColors
                                                              .blackTextColor),
                                                ),
                                                Checkbox(
                                                  activeColor:
                                                      AppColors.greyTextColor,
                                                  value: isChecked,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                )
                                              ],
                                            );
                                          },
                                          itemCount: 2),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(
                                              color: AppColors.greenColor),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: const Text(
                                          'Confirm',
                                          style: TextStyle(
                                              color: AppColors.greenColor),
                                        ),
                                        onPressed: () {
                                          // Handle the confirm action
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.languages,
                                  style: AppTextStyle.styleMedium18
                                      .copyWith(color: AppColors.greyTextColor),
                                ),
                                const Text(AppStrings.english,
                                    style: AppTextStyle.styleRegular15)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0, right: 17),
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                      'Choose state currency',
                                      style: AppTextStyle.styleMedium18,
                                    ),
                                    content: SizedBox(
                                      height: 85,
                                      width: 50,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  SettingModel
                                                      .currencyItem[index]
                                                      .title,
                                                  style: AppTextStyle
                                                      .styleRegular15
                                                      .copyWith(
                                                          color: AppColors
                                                              .blackTextColor),
                                                ),
                                                Checkbox(
                                                  activeColor:
                                                      AppColors.greyTextColor,
                                                  value: isChecked,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                )
                                              ],
                                            );
                                          },
                                          itemCount: 2),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(
                                              color: AppColors.greenColor),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: const Text(
                                          'Confirm',
                                          style: TextStyle(
                                              color: AppColors.greenColor),
                                        ),
                                        onPressed: () {
                                          // Handle the confirm action
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppStrings.currency,
                                  style: AppTextStyle.styleMedium18
                                      .copyWith(color: AppColors.greyTextColor),
                                ),
                                const Text(AppStrings.usd,
                                    style: AppTextStyle.styleRegular15),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0, right: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.linkedAccounts,
                                style: AppTextStyle.styleMedium18
                                    .copyWith(color: AppColors.greyTextColor),
                              ),
                              const Text(AppStrings.socialMediaAccounts,
                                  style: AppTextStyle.styleRegular15),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context)
                                  {return  PrivacyAndPolicy();}));
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blue,
                              child: Icon(Iconsax.lock,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.privacyPolicy,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HelpCenterScreen.routeName);
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.red,
                              child: Icon(Iconsax.message_question,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.helpCenter,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
                            {return InformationAboutDisease();}));
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.greenColor,
                              child: Icon(Iconsax.book_square,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.informationtitle,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .85,
                            child: const Divider(
                              color: AppColors.greyTextColor,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(AppStrings.logOut),
                                  content: const Text(
                                      'Are you sure ! you want log out ? '),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                            color: AppColors.greenColor),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text(
                                        'Confirm',
                                        style: TextStyle(
                                            color: AppColors.greenColor),
                                      ),
                                      onPressed: () async {
                                       await FirebaseAuth.instance.signOut();
                                        Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context){return JoinUsScreen();}));
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: Icon(Iconsax.logout,
                                  color: AppColors.whiteColor),
                            ),
                            title: Text(
                              AppStrings.logOut,
                              style: AppTextStyle.styleMedium18
                                  .copyWith(color: AppColors.greyTextColor),
                            ),
                            trailing: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(Icons.arrow_back_ios_new,
                                    color: AppColors.greyTextColor)),
                          ),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                      ],
                    ),
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
