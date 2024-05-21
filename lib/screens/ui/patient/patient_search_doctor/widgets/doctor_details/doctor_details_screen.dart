import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/doctor_appointment_screen.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});
  static const String routeName = 'DoctorDetailsScreen';

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
                          AppStrings.doctorDetails,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            width: width,
                            height: height * .25,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: width * .23,
                                        height: height * .12,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                        child:
                                            Image.asset(AppAssets.doctorPhoto),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: width * .551,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    'Dr. Pediatrician',
                                                    style: AppTextStyle
                                                        .styleMedium18,
                                                  ),
                                                  const Expanded(
                                                      child: SizedBox()),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Iconsax.heart,
                                                        color: Colors.red,
                                                      ))
                                                ],
                                              ),
                                              const Text(
                                                'Specialist Cardiologist',
                                                style:
                                                    AppTextStyle.styleRegular15,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  RatingBar.builder(
                                                    itemSize: 20,
                                                    initialRating: 3,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 1.0),
                                                    itemBuilder: (context, _) =>
                                                        const Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    ),
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                  const Expanded(
                                                      child: SizedBox()),
                                                  Text(
                                                    r'$',
                                                    style: AppTextStyle
                                                        .styleRegular15
                                                        .copyWith(
                                                            color: AppColors
                                                                .greenColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    '28.00/h',
                                                    style: AppTextStyle
                                                        .styleRegular15,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                   Center(
                                    child:
                                        CustomButton(text: AppStrings.bookNow,onTap: (){
                                          Navigator.pushNamed(context, DoctorAppointmentScreen.routeName);
                                        },),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Container(
                            height: height * .12,
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, left: 10),
                                    child: Container(
                                      height: height * .1,
                                      width: width * .25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: AppColors.greyWhite),
                                      child: Center(
                                          child: Text(
                                        '100\nRuning',
                                        style: AppTextStyle.styleRegular15
                                            .copyWith(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      height: height * .1,
                                      width: width * .23,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: AppColors.greyWhite),
                                      child: Center(
                                          child: Text(
                                        '500\nOngoing',
                                        style: AppTextStyle.styleRegular15
                                            .copyWith(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      height: height * .1,
                                      width: width * .25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: AppColors.greyWhite),
                                      child: Center(
                                          child: Text(
                                        '300\nPatient',
                                        style: AppTextStyle.styleRegular15
                                            .copyWith(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          AppStrings.Biography,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1.',
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.greenColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Patient care should be the number one priority.',
                              style: AppTextStyle.styleRegular15,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2.',
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.greenColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'If you run your practice you know how\n frustrating.',
                              style: AppTextStyle.styleRegular15,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3.',
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.greenColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'That’s why some of appointment reminder\n system.',
                              style: AppTextStyle.styleRegular15,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: width,
                          height: height * .25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.whiteColor),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/images/small_map.png'),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
