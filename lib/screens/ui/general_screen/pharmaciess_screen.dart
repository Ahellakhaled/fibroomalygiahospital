import 'package:fibrohospital/screens/ui/general_screen/ezabyscreen.dart';
import 'package:fibrohospital/screens/ui/general_screen/pharmacies_model.dart';
import 'package:fibrohospital/utils/widgets/custom_pharma_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class PharmaciesScreen extends StatefulWidget {
  const PharmaciesScreen({super.key});
  static const String routeName = 'pharmaciesScreen';

  @override
  State<PharmaciesScreen> createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
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
                          AppStrings.pharmacies,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          tabs: const [
                            Tab(
                              text: 'All',
                            ),
                            Tab(
                              text: 'Top Rated',
                            ),
                            Tab(
                              text: 'Nearest',
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
                                    itemCount:
                                        Pharmaciesmodel.pharmaModelAll.length,
                                    itemBuilder: (context, index) {
                                      return CustomPharmaContainer(
                                        index: index,
                                        pharmamodel: Pharmaciesmodel
                                            .pharmaModelAll[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Center(
                                  child: Expanded(
                                child: ListView.builder(
                                  itemCount: Pharmaciesmodel
                                      .pharmaModelTopRatied.length,
                                  itemBuilder: (context, index) {
                                    return CustomPharmaContainer(
                                      index: index,
                                      pharmamodel: Pharmaciesmodel
                                          .pharmaModelTopRatied[index],
                                    );
                                  },
                                ),
                              )),
                              Center(
                                  child: Expanded(
                                child: ListView.builder(
                                  itemCount: Pharmaciesmodel
                                      .pharmaModelNeareast.length,
                                  itemBuilder: (context, index) {
                                    return CustomPharmaContainer(
                                      index: index,
                                      pharmamodel: Pharmaciesmodel
                                          .pharmaModelNeareast[index],
                                    );
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
