import 'package:fibrohospital/screens/screens_not_use/order_screen_model.dart';
import 'package:fibrohospital/screens/screens_not_use/custom_order_screen_container.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  static const String routeName = 'OrdersScreen' ;

  const OrdersScreen({super.key});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20),
              child: Column(
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
                          AppStrings.orders,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const CustomSearchBar(),
                  const SizedBox(height: 30,),
                  Expanded(
                    child: GridView.builder(
                      itemBuilder: (context, index) {
                        return CustomOrderScreenContainer(imagePath:OrderScreenModel.OrderScreenModelList[index].imagePath,
                          text:OrderScreenModel.OrderScreenModelList[index].text ,);
                      },
                      itemCount: 6,
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing:10 ,
                          crossAxisSpacing: 10
                        )),
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
