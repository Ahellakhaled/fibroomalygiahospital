
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Custom4DigitContainer extends StatelessWidget {
  const Custom4DigitContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                      color: AppColors.greyTextColor,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  AppStrings.enterDigitsTitle,
                  style: AppTextStyle.styleRegular25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppStrings.enterDigitsDesc,
                style: AppTextStyle.styleRegular15
                    .copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 30,
              ),

              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                style:const TextStyle(
                  fontSize: 20,
                  color: AppColors.greenColor,
                  fontWeight: FontWeight.w500,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                keyboardType: TextInputType.number,
                contentPadding:const EdgeInsets.only(top: 20),
                otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: AppColors.greyWhite,
                ),
                outlineBorderRadius: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    builder: (context) {
                      return const Custom4DigitContainer() ;
                    },);
                },
                child: const Center(
                    child: CustomButton(text: AppStrings.continueText)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
