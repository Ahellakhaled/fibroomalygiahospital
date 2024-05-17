import 'dart:ui';

import 'package:fibrohospital/utils/styles/colors/app_colors.dart';

class TypesServicesModel {
  final String imagePath ;
  final Color bkColor ;

  TypesServicesModel({required this.imagePath,required this.bkColor});


  static List <TypesServicesModel> items = [
    TypesServicesModel(imagePath: "assets/images/item1.svg", bkColor: AppColors.blueColor),
    TypesServicesModel(imagePath: "assets/images/item2.svg", bkColor: AppColors.greenColor),
    TypesServicesModel(imagePath: "assets/images/item3.svg", bkColor: AppColors.orangeColor),
    TypesServicesModel(imagePath: "assets/images/item4.svg", bkColor: AppColors.redColor),
  ];



}