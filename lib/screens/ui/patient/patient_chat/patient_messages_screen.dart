import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DoctorMessageScreen extends StatefulWidget {
  DoctorMessageScreen({super.key});

  static const String routeName = 'DoctorMessageScreen';
  @override
  State<DoctorMessageScreen> createState() => _DoctorMessageScreenState();
}

class _DoctorMessageScreenState extends State<DoctorMessageScreen> {

  @override

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .12,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: AppColors.whiteColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomArrowBack(),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(AppAssets.circleDoctorPhoto),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.Shady Ali',
                            style: AppTextStyle.styleMedium18,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: AppColors.greenColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Online',
                                style: AppTextStyle.styleRegular15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [

                        SizedBox(
                          width: width * .77,
                          child: Container(
                            height: height * .075,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding:
                              const EdgeInsets.only(right: 10.0, left: 10),
                              child: Row( //Row
                                children: [
                                  SizedBox(
                                    width: width * .54,
                                    child:
                                    TextField(

                                      decoration: const InputDecoration(
                                        hintText: 'write a message',
                                        //border: InputBorder.none),

                                        //const SizedBox(
                                        // width: 10,
                                      ),  //),
                                    ),
                                    //const SizedBox(
                                    //width: 10,
                                  ),
                                  const Icon(
                                    Icons.mic,
                                    color: AppColors.greyTextColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.file_present,
                                    color: AppColors.greyTextColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: width * .15,
                          child: Container(
                              height: height * .075,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.greenColor),
                              child:  Center(
                                child: IconButton(icon: Icon(Icons.send), onPressed: () {}

                                ),
                              )),
                        ),

                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

