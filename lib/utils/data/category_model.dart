

import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';

class CategoryModel {
  final String imagePath ;
  final String name ;

  CategoryModel({required this.imagePath,required this.name});

  static List <CategoryModel> itemServices = [
    CategoryModel(imagePath: "assets/images/pharmacy_icon.png", name: AppStrings.pharmacy),
    CategoryModel(imagePath: "assets/images/blood-test.png", name: AppStrings.diagnostics),
    CategoryModel(imagePath: "assets/images/store_icon.png", name: AppStrings.store),
  ] ;

  static List <CategoryModel> itemData = [
    CategoryModel(imagePath: "assets/images/medical_record_icon.png", name: AppStrings.medicalRecords),
    CategoryModel(imagePath: "assets/images/stetho_icon.png", name: AppStrings.myDoctors),
  ] ;


}