import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.greyTextColor,
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search_sharp,
            color: AppColors.greyTextColor,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close,
                color: AppColors.greyTextColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(color: AppColors.greyWhite)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
              const BorderSide(color: AppColors.greyWhite)),
          hintText: 'Search',
          labelStyle: const TextStyle(
              color: AppColors.greyTextColor, fontSize: 17),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: AppColors.whiteColor),
    );
  }
}
