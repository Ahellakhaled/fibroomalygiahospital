import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Presentation/views/diagnostics_book_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/store_view.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/medical_all_records_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/my_doctors_screen.dart';
import 'package:fibrohospital/utils/data/category_model.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/widgets/custom_popular_doctor_container.dart';
import 'package:fibrohospital/screens/ui/general_screen/pharmaciess_screen.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import 'data/newpopulardoctormodel.dart';

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});
  static const String routeName = 'PatientHomeScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: width,
                        height: height * .2,
                        decoration: const BoxDecoration(
                          color: AppColors.greenColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi Yahia Azzam !',
                                    style: AppTextStyle.styleMedium18.copyWith(
                                        color: AppColors.greyWhite,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppStrings.findYourDoctor,
                                    style: AppTextStyle.styleRegular25.copyWith(
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 35,
                                child:
                                    Image.asset(AppAssets.circlePatientPhoto),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * .16, right: 25, left: 25),
                        child: const CustomSearchBar(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Text(
                        //   AppStrings.ourServices,
                        //   style: AppTextStyle.styleMedium18,
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        //  SizedBox(
                        //     height: height * .12,
                        //     width: width,
                        //     child: ListView.builder(
                        //       itemCount: 4,
                        //       scrollDirection: Axis.horizontal,
                        //       itemBuilder: (context, index) {
                        //         return Padding(
                        //           padding: const EdgeInsets.only(right: 15.0),
                        //           child: GestureDetector(
                        //             onTap: (){},
                        //             child: Column(
                        //               children: [
                        //                 Container(
                        //                   width: 100,
                        //                   height: height * .09,
                        //                   decoration: BoxDecoration(
                        //                       borderRadius:
                        //                           BorderRadius.circular(15),
                        //                       color: TypesServicesModel
                        //                           .items[index].bkColor),
                        //                   child: SvgPicture.asset(
                        //                     TypesServicesModel
                        //                         .items[index].imagePath,
                        //                     fit: BoxFit.scaleDown,
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                   height: 5,
                        //                 ),
                        //                 Text(
                        //                   'philo',
                        //                   style: AppTextStyle.styleRegular15
                        //                       .copyWith(
                        //                           color:
                        //                               AppColors.blackTextColor),
                        //                 )
                        //               ],
                        //             ),
                        //           ),
                        //         );
                        //       },
                        //     )),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        const Text(
                          AppStrings.popularDoctor,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .28,
                          child: ListView.builder(
                            itemCount:
                                NewPopularDoctorModel.PopularDoctor.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CustomPopularDoctorContainer(
                                index: index,
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          AppStrings.services,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: height * .2,
                            width: width,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        Navigator.pushNamed(context,
                                            PharmaciesScreen.routeName);
                                      } else if (index == 1) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DiagnosticsBookView(),
                                          ),
                                        );
                                      } else if (index == 2) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const StoreView(),
                                          ),
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: width * .4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppColors.whiteColor),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            CategoryModel
                                                .itemServices[index].imagePath,
                                            fit: BoxFit.scaleDown,
                                            height: 50,
                                            width: 210,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            CategoryModel
                                                .itemServices[index].name,
                                            style: AppTextStyle.styleMedium18,
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          const Text(
                                            '24 Hours',
                                            style: AppTextStyle.styleRegular15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )),

                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Your Data',
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: height * .2,
                            width: width,
                            child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        Navigator.pushNamed(context,
                                            MedicalAllRecordsScreen.routeName);
                                      }
                                      if (index == 1) {
                                        Navigator.pushNamed(
                                            context, MyDoctorsScreen.routeName);
                                      }
                                    },
                                    child: Container(
                                      width: width * .4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: AppColors.whiteColor),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            CategoryModel
                                                .itemData[index].imagePath,
                                            fit: BoxFit.scaleDown,
                                            width: 70,
                                            height: 70,
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            CategoryModel.itemData[index].name,
                                            style: AppTextStyle.styleMedium18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )),

                        const SizedBox(
                          height: 100,
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
