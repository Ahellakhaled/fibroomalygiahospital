import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomFindDoctorsContainer extends StatelessWidget {
  const CustomFindDoctorsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height*.29,
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
                Container(
                  width: width*.23,
                  height: height*.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(AppAssets.doctorPhoto),

                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: width*.467,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Dr. Shruti Kedia',style: AppTextStyle.styleMedium18,),
                        const SizedBox(height: 3,),
                        Text('Tooth Dentist',style: AppTextStyle.styleRegular15.copyWith(color: AppColors.greenColor),),
                        const SizedBox(height: 3,),
                        const Text('7 Years experience ',style: AppTextStyle.styleRegular15,),
                        const SizedBox(height: 3,),
                        const Row(
                          children: [
                             CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,


                            ),
                            SizedBox(width: 3,),
                            Text('87 %',style: AppTextStyle.styleRegular15,),
                            SizedBox(width: 10,),
                            CircleAvatar(
                              backgroundColor: AppColors.greenColor,
                              radius: 7,


                            ),
                            SizedBox(width: 3,),
                            Text('69 Patient',style: AppTextStyle.styleRegular15,),


                          ],
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon:const Icon(Iconsax.heart))
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.nextAvailable,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greenColor),),
                const SizedBox(width: 10,),
                Text('10:00 AM tomorrow',style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),




              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
                width: width,
                child: CustomButton(text: AppStrings.bookNow))

          ],
        ),
      ),
      
      
      
    );
  }
}
