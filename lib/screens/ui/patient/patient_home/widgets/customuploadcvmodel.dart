import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomUploadCvModel extends StatelessWidget {
  const CustomUploadCvModel({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .37,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
              padding: EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text(
                  AppStrings.addRecord,
                  style: AppTextStyle.styleRegular25,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(Iconsax.camera),
              title: Text(AppStrings.takePhoto),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Iconsax.gallery),
              title: Text(AppStrings.uploadFromGallery),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Icons.file_present_outlined),
              title: Text(AppStrings.uploadFiles),
            ),
          ],
        ),
      ),
    );
  }
}