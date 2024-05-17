import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/widgets/types_record_model.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class AddRecordScreen extends StatefulWidget {

  static const String routeName = 'AddRecordScreen';

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
  TextEditingController ?recordForController = TextEditingController();

  TextEditingController ?recordCreatedOnController = TextEditingController();


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
                          AppStrings.addRecords,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * .2,
                    width: width * .4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.lightGreenColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: AppColors.greenColor,
                          size: 60,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          AppStrings.addImages,
                          style: AppTextStyle.styleMedium18
                              .copyWith(color: AppColors.greenColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .15,
                  ),
                  CustomProfileTextField(
                      icon: Iconsax.edit, labelName: AppStrings.recordFor,pController: recordForController,),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    AppStrings.typeOfRecord,
                    style: AppTextStyle.styleMedium18,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: height * .1,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                TypesRecordModel.items[index].imagePath,
                                fit: BoxFit.scaleDown,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                TypesRecordModel.items[index].text,
                                style: AppTextStyle.styleRegular15,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomProfileTextField(
                      icon: Iconsax.calendar,
                      labelName: AppStrings.recordCreatedOn,pController: recordCreatedOnController,),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: CustomButton(text: AppStrings.uploadRecord),
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
