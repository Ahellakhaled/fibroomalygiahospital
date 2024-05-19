import 'package:fibrohospital/screens/ui/general_screen/19011screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/misrscreen.dart';
import 'package:fibrohospital/screens/ui/general_screen/seifscreen.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../screens/ui/general_screen/AleinScreen.dart';
import '../../screens/ui/general_screen/Alserafyscreen.dart';
import '../../screens/ui/general_screen/CAREscreen.dart';
import '../../screens/ui/general_screen/ezabyscreen.dart';
import '../../screens/ui/general_screen/pharmacies_model.dart';

class CustomPharmaContainer extends StatelessWidget {


  final Pharmaciesmodel pharmamodel;
  final int index;

  CustomPharmaContainer ({
    required this.index,
    required this.pharmamodel,});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
        onTap: (){
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return EzabyPharmacy();
                    }));
          }else if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return MisrPharmacy();
                    }));
          }else if(index == 2){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return SeifPharmacy();
                    }));
          }else if (index == 3){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return NineteenPharmacy();
                    }));
          }
          else if (index == 4){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return CarePharmacy();
                    }));
          }
          else if (index == 5){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return AlserafiPharmacy();
                    }));
          }
          else if (index == 6){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) {
                      return AlAinPharmacy();
                    }));
          }
        },
        child: Container(
          width: width,
          height: 140,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(pharmamodel.imagePath),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "${pharmamodel.title}",
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          pharmamodel.subTitle,
                          maxLines: 2,
                          style: AppTextStyle.styleRegular15,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                         Text(
                          pharmamodel.number,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: pharmamodel.rate,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const Expanded(child: SizedBox()),
                            Text(
                              "${pharmamodel.rate}",
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '(208 view)',
                              style: AppTextStyle.styleRegular15,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
