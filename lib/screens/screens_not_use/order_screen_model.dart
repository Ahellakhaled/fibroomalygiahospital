import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';

class OrderScreenModel {
  final String text ;
  final String imagePath ;

  OrderScreenModel(this.text, this.imagePath);


  static List <OrderScreenModel>  OrderScreenModelList = [
    OrderScreenModel(AppStrings.guideToOrder, AppAssets.orderScreenContainerPhoto1),
    OrderScreenModel(AppStrings.prescriptionRelatedIssues, AppAssets.orderScreenContainerPhoto2),
    OrderScreenModel(AppStrings.orderStatus, AppAssets.orderScreenContainerPhoto3),
    OrderScreenModel(AppStrings.orderDelivery, AppAssets.orderScreenContainerPhoto4),
    OrderScreenModel(AppStrings.paymentsAndRefunds, AppAssets.orderScreenContainerPhoto5),
    OrderScreenModel(AppStrings.orderReturns, AppAssets.orderScreenContainerPhoto6),
  ] ;


}