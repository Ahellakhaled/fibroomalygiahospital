import 'package:flutter/material.dart';
import '../../../utils/styles/Strings/app_strings.dart';
import '../../../utils/styles/Text_style/app_text_style.dart';
import '../../../utils/styles/assets/app_assets.dart';
import '../../../utils/styles/colors/app_colors.dart';
import '../../../utils/widgets/custom_arrow_back.dart';
import '../../../utils/widgets/custom_background.dart';

class SeifPharmacy extends StatelessWidget {
  const SeifPharmacy({super.key});
  static const String routeName = 'SeifPharmacy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangeBackgroundColor,
      body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CustomArrowBack(),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              AppStrings.backButtom,
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.appBackgroundColor),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .7,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Image.asset(AppAssets.seifLogo),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        " 25% off ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "Get 25% off of purchases. When you go to the store, Scan the Qr code from your nearest branch",
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          wordSpacing: 1,
                        )),

                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Icon(
                          Icons.qr_code_2_rounded,
                          color: AppColors.appBackgroundColor,
                          size: 150,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
