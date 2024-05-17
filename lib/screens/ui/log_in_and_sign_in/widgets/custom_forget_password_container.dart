import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomForgetPassContainer extends StatefulWidget {
  const CustomForgetPassContainer({super.key});

  @override
  State<CustomForgetPassContainer> createState() =>
      _CustomForgetPassContainerState();
}

class _CustomForgetPassContainerState extends State<CustomForgetPassContainer> {
  TextEditingController? passController = TextEditingController();

  GlobalKey<FormState> passKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
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
                AppStrings.forgotPassword,
                style: AppTextStyle.styleRegular25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.forgetPasswordDesc,
              style: AppTextStyle.styleRegular15
                  .copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
                text: AppStrings.email,
                tController: passController,
                formstate: passKey),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: CustomButton(
              onTap: () => Navigator.pop(context),
              text: AppStrings.continueText,
            )),
          ],
        ),
      ),
    );
  }
}
