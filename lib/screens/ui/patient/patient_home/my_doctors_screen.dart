import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/custom_search_docrors_container.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/doctor_details/custom_my_doctors_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import 'data/mydoctorsmodel.dart';

class MyDoctorsScreen extends StatefulWidget {
  const MyDoctorsScreen({super.key});
  static const String routeName = 'MyDoctorsScreen';

  @override
  State<MyDoctorsScreen> createState() => _MyDoctorsScreenState();
}

class _MyDoctorsScreenState extends State<MyDoctorsScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
                          AppStrings.myDoctors,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomSearchBar(),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TabBar(
                          unselectedLabelColor: AppColors.greyTextColor,
                          labelColor: AppColors.blackTextColor,
                          indicatorColor: AppColors.greenColor,
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              text: 'Booked',
                            ),
                            Tab(
                              text: 'Favourite',
                            ),
                          ],
                          controller: tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              Center(
                                child: Expanded(
                                  child: ListView.builder(
                                    itemCount: MyDoctorModel.DoctorModel.length,
                                    itemBuilder: (context, index) {
                                      return  Padding(
                                        padding: EdgeInsets.only(bottom: 10.0),
                                        child: CustomMyDoctorsContainer(index: index,),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Center(
                                  child: Expanded(
                                child: ListView.builder(
                                  itemCount: MyDoctorModel.DoctorModel.length,
                                  itemBuilder: (context, index) {
                                    return  CustomSearchDoctorsContainer(index: index, Modelindex: 0,);
                                  },
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
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
