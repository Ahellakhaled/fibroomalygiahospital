import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/doctor_details/doctor_details_screen.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../patient_home/data/searchmodel.dart';

class CustomSearchDoctorsContainer extends StatelessWidget {
  final int index ;
  int Modelindex;
  CustomSearchDoctorsContainer({super.key,
    required this.index,
    required this.Modelindex
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, DoctorDetailsScreen.routeName);
        },
        child: Container(
          width: width,
          height: height * .15,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Modelindex==0?Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${SearchModel.All[index].imagePath}",

                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              SearchModel.All[index].Name,
                              style: AppTextStyle.styleMedium18,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.heart,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        Text(
                          SearchModel.All[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 1,
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
                              SearchModel.All[index].Rate,
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              SearchModel.All[index].Views
                              ,
                              style: AppTextStyle.styleRegular15,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ):
            Modelindex==1? Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${SearchModel.Rheumatology[index].imagePath}",

                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              SearchModel.Rheumatology[index].Name,
                              style: AppTextStyle.styleMedium18,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.heart,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        Text(
                          SearchModel.Rheumatology[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 1,
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
                              SearchModel.Rheumatology[index].Rate,
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              SearchModel.Rheumatology[index].Views
                              ,
                              style: AppTextStyle.styleRegular15,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ):
            Modelindex==2? Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${SearchModel.Immunology[index].imagePath}",

                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              SearchModel.Immunology[index].Name,
                              style: AppTextStyle.styleMedium18,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.heart,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        Text(
                          SearchModel.Immunology[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 1,
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
                              SearchModel.Immunology[index].Rate,
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              SearchModel.Immunology[index].Views
                              ,
                              style: AppTextStyle.styleRegular15,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ):Modelindex==3?Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(
                    "${SearchModel.Psychology[index].imagePath}",

                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              SearchModel.Psychology[index].Name,
                              style: AppTextStyle.styleMedium18,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.heart,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        Text(
                          SearchModel.Psychology[index].Description,
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 1,
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
                              SearchModel.Psychology[index].Rate,
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              SearchModel.Psychology[index].Views
                              ,
                              style: AppTextStyle.styleRegular15,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],):Modelindex==4?Row(
          children: [
          Container(
          width: width * .23,
            height: height * .12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Image.asset(
              "${SearchModel.Hematology[index].imagePath}",

            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: width * .551,
            child: Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        SearchModel.Hematology[index].Name,
                        style: AppTextStyle.styleMedium18,
                      ),
                      const Expanded(child: SizedBox()),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.heart,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  Text(
                    SearchModel.Hematology[index].Description,
                    style: AppTextStyle.styleRegular15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 1,
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
                        SearchModel.Hematology[index].Rate,
                        style: AppTextStyle.styleRegular15
                            .copyWith(color: AppColors.blackTextColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        SearchModel.Hematology[index].Views
                        ,
                        style: AppTextStyle.styleRegular15,
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),

          ],):Row(
      children: [
      Container(
      width: width * .23,
        height: height * .12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
        ),
        child: Image.asset(
          "${SearchModel.Nutrition[index].imagePath}",

        ),
      ),
      const SizedBox(
        width: 10,
      ),
      SizedBox(
        width: width * .551,
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    SearchModel.Nutrition[index].Name,
                    style: AppTextStyle.styleMedium18,
                  ),
                  const Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart,
                        color: Colors.red,
                      ))
                ],
              ),
              Text(
                SearchModel.Nutrition[index].Description,
                style: AppTextStyle.styleRegular15,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: 1,
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
                    SearchModel.Nutrition[index].Rate,
                    style: AppTextStyle.styleRegular15
                        .copyWith(color: AppColors.blackTextColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    SearchModel.Nutrition[index].Views
                    ,
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
