import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';

class TypesRecordModel {
  final String imagePath ;
  final String text ;

  TypesRecordModel({required this.imagePath,required this.text});
  static List <TypesRecordModel> items = [
    TypesRecordModel(imagePath: 'assets/images/typesRecord1.svg', text: AppStrings.report),
    TypesRecordModel(imagePath: 'assets/images/typesRecord2.svg', text: AppStrings.prescription),
    TypesRecordModel(imagePath: 'assets/images/typesRecord3.svg', text: AppStrings.invoice),



  ];


}