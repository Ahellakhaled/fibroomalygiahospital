import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});
  static const String routeName = 'HelpCenterScreen';

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
              child: SingleChildScrollView(
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
                            AppStrings.helpCenter,
                            style: AppTextStyle.styleMedium18,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: AppColors.greenColor,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: AppColors.greyWhite)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: AppColors.greyWhite)),
                          hintText: 'I have an issue with',
                          hintStyle: const TextStyle(
                              color: AppColors.greenColor, fontSize: 17),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: AppColors.whiteColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //1
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with ${AppStrings.bookingANewAppointment} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber1Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.bookingANewAppointment,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //2
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with ${AppStrings.existingAppointment} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber2Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.existingAppointment,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //3
                    // InkWell(
                    //   onTap: (){
                    //     showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return AlertDialog(
                    //           backgroundColor: AppColors.appBackgroundColor,
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(12)),
                    //           title: Text(
                    //             'Are you have an issue with ${AppStrings.bookingANewAppointment} ?',
                    //             style: AppTextStyle.styleRegular15.copyWith(
                    //                 color: AppColors.blackTextColor,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //           content: const Text(''),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   child: ListTile(
                    //     title: Text(
                    //       AppStrings.onlineConsultations,
                    //       style: AppTextStyle.styleMedium18
                    //           .copyWith(color: AppColors.greyTextColor),
                    //     ),
                    //     trailing: CircleAvatar(
                    //       radius: 15,
                    //       backgroundColor: AppColors.greyWhite,
                    //       child: Text(
                    //         '?',
                    //         style: TextStyle(color: Colors.grey[700]),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 2,
                    // ),

                    //4
                    //3
                    // InkWell(
                    //   onTap: (){
                    //     showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return AlertDialog(
                    //           backgroundColor: AppColors.appBackgroundColor,
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(12)),
                    //           title: Text(
                    //             'Are you have an issue with ${AppStrings.bookingANewAppointment} ?',
                    //             style: AppTextStyle.styleRegular15.copyWith(
                    //                 color: AppColors.blackTextColor,
                    //                 fontWeight: FontWeight.bold),
                    //           ),
                    //           content: const Text(''),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   child: ListTile(
                    //     title: Text(
                    //       AppStrings.medicineOrders,
                    //       style: AppTextStyle.styleMedium18
                    //           .copyWith(color: AppColors.greyTextColor),
                    //     ),
                    //     trailing: CircleAvatar(
                    //       radius: 15,
                    //       backgroundColor: AppColors.greyWhite,
                    //       child: Text(
                    //         '?',
                    //         style: TextStyle(color: Colors.grey[700]),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 2,
                    // ),

                    //4

                    //3
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with ${AppStrings.diagnosticTests} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber3Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.diagnosticTests,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //4
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with ${AppStrings.saveMedicalRecord} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber4Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.saveMedicalRecord,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //5
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with\n${AppStrings.myAccount} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber5Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.myAccount,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),

                    //6
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColors.appBackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              title: Text(
                                'Are you have an issue with ${AppStrings.feedbacks} ?',
                                style: AppTextStyle.styleRegular15.copyWith(
                                    color: AppColors.greenColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                AppStrings.helpCenterNumber6Desc,
                                style: AppTextStyle.styleRegular15,
                              ),
                              actions: [
                                CustomButton(
                                  text: 'Okay',
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(
                          AppStrings.feedbacks,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greyTextColor),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.greyWhite,
                          child: Text(
                            '?',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
