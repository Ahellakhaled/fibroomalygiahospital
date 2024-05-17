import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class CustomAllRecordsContainer extends StatelessWidget {
  const CustomAllRecordsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height*.178,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: width*.2,
                      height: height*.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColors.greenColor
                      ),
                      child: Center(child: Text('27\nFeb',style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor,fontSize: 20),textAlign: TextAlign.center,)),
                    ),
                    const SizedBox(height: 2,),
                    Container(
                      width: width*.2,
                      height: height*.04,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(child: Text('New',style: AppTextStyle.styleRegular15.copyWith(color: AppColors.greenColor),textAlign: TextAlign.center,)),


    ),
                  ],
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: width*.49,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Records added by you',style: AppTextStyle.styleMedium18,),
                        const SizedBox(height: 3,),
                        Text('Record for Abdullah mamun',style: AppTextStyle.styleRegular15.copyWith(color: AppColors.greenColor),),
                        const SizedBox(height: 3,),
                        const Text('1 Prescription',style: AppTextStyle.styleRegular15,),

                                            ],
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon:const Icon(Iconsax.menu))
              ],
            ),
            const SizedBox(height: 10,),

          ],
        ),
      ),



    );

  }
}
