import 'package:fibrohospital/core/local_database/catch_helper.dart';
import 'package:fibrohospital/core/local_database/services_locator.dart';
import 'package:fibrohospital/screens/ui/initial_pages/data/onBoarding_model.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/join_us_screen.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'onBoardingScreen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  int currentIndex = 0;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      const CustomBackground(),
      Positioned(
        top: -10,
        left: currentIndex == 1 ? 175 : -104,
        child: CircleAvatar(
          backgroundColor: AppColors.greenColor,
          radius: width * .4,
        ),
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                  if (value + 1 == OnBoardingModel.onBoardingScreens.length) {
                    setState(() {
                      isLastPage = true;
                    });
                  } else {
                    setState(() {
                      isLastPage = false;
                    });
                  }
                },
                controller: controller,
                itemCount: OnBoardingModel.onBoardingScreens.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    SizedBox(
                      height: height * .10,
                    ),
                    CircleAvatar(
                      radius: width * .43,
                      child: Image.asset(
                          OnBoardingModel.onBoardingScreens[index].imagePath),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Text(
                      OnBoardingModel.onBoardingScreens[index].title,
                      style: AppTextStyle.styleRegular28,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: width * .85,
                      child: Text(
                        OnBoardingModel.onBoardingScreens[index].subTitle,
                        style: AppTextStyle.styleRegular15,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      width: width * .8,
                      child: ElevatedButton(
                        onPressed: () async {
                          var saveData = await getIt<CacheHelper>()
                              .setData(key: 'isVisited', value: true)
                              .then((value) {
                            index == 2
                                ? Navigator.pushReplacementNamed(
                                context, JoinUsScreen.routeName)
                                : controller.nextPage(
                                duration:
                                const Duration(milliseconds: 1000),
                                curve: Curves
                                    .fastEaseInToSlowEaseOut);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Text(
                            OnBoardingModel.onBoardingScreens[index].nextBottom,
                            style: AppTextStyle.styleRegular28
                                .copyWith(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: Text(
                        OnBoardingModel.onBoardingScreens[index].skip,
                        style: AppTextStyle.styleRegular15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ]);
                }))
      ])
    ])));
  }
}
