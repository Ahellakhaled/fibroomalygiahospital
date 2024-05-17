import 'package:fibrohospital/screens/ahella/Core/theming/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/data/setting_model.dart';
import '../../../../../../utils/styles/Strings/app_strings.dart';
import '../../../../../../utils/styles/Text_style/app_text_style.dart';
import '../../../../../../utils/styles/colors/app_colors.dart';
import '../../../../../ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';


class CartDetailsSection extends StatefulWidget {
   const CartDetailsSection({super.key});

  @override
  State<CartDetailsSection> createState() => _CartDetailsSectionState();
}

class _CartDetailsSectionState extends State<CartDetailsSection> {
  bool isChecked = false;
  Object? val = -1;
  String? selectedValue;
  String dropdownValue = 'one';
  TextEditingController ?nameController = TextEditingController();

  TextEditingController ?contactNumberController = TextEditingController();

  TextEditingController ?emailController = TextEditingController();

  TextEditingController ?addressController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                      children: [
                        SvgPicture.asset('assets/images/Personalinfo.svg'),
                        const SizedBox(width: 30),
                        const Text(
                          'Personal Information',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ]
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(width: 30),
                  Container(

                    width: MediaQuery
                        .of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * .6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.whiteColor),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 15.0, right: 8, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                           CustomProfileTextField(
                              icon: Iconsax.personalcard,
                              labelName: AppStrings.name,pController: nameController,),
                          const SizedBox(
                            height: 20,
                          ),
                           CustomProfileTextField(
                              icon: Icons.phone,
                              labelName: AppStrings.contactNumber,pController: contactNumberController,),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomProfileTextField(
                              icon: Icons.email, labelName: AppStrings.email,pController: emailController,),
                          const SizedBox(
                            height: 20,
                          ),
                          // TextFormField(
                          //
                          //   readOnly: true,
                          //   decoration: InputDecoration(
                          //       filled: true,
                          //       fillColor: AppColors.whiteColor,
                          //
                          //     focusedBorder: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(10),
                          //         borderSide: const BorderSide(color: AppColors.greenColor)),
                          //     enabledBorder: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(10),
                          //         borderSide: const BorderSide(color: AppColors.greyWhite)),
                          //     labelText: AppStrings.region ,
                          //     labelStyle: const TextStyle(color: AppColors.greenColor,fontSize: 17),
                          //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          //   ),
                          // ),
                           CustomProfileTextField(
                              icon: Icons.home,
                              labelName: AppStrings.address,pController: addressController,),

                          // Text(
                          //   'Gander',
                          //   style: AppTextStyle.styleMedium18,
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Row(
                          //   children: [
                          //     Row(
                          //       children: [
                          //         Radio(
                          //             value: 'male',
                          //             activeColor: AppColors.greenColor,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value;
                          //               });
                          //             }),
                          //         Text(
                          //           'Male',
                          //           style: AppTextStyle.styleRegular15.copyWith(
                          //               color: AppColors.blackTextColor,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //       ],
                          //     ),
                          //     const SizedBox(
                          //       width: 5,
                          //     ),
                          //     Row(
                          //       children: [
                          //         Radio(
                          //             value: 'female',
                          //             activeColor: AppColors.greenColor,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value;
                          //               });
                          //             }),
                          //         Text(
                          //           'Female',
                          //           style: AppTextStyle.styleRegular15.copyWith(
                          //               color: AppColors.blackTextColor,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //       ],
                          //     ),
                          //     const SizedBox(
                          //       width: 5,
                          //     ),
                          //     Row(
                          //       children: [
                          //         Radio(
                          //             value: 'others',
                          //             activeColor: AppColors.greenColor,
                          //             groupValue: val,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 val = value;
                          //               });
                          //             }),
                          //         Text(
                          //           'Others',
                          //           style: AppTextStyle.styleRegular15.copyWith(
                          //               color: AppColors.blackTextColor,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              const SizedBox(width: 15),
                              const Text(
                                'Region',
                                style: TextStyle(
                                    color: MyColors.green, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 17.0, right: 17),
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text(
                                            'Choose your Region',
                                            style: AppTextStyle.styleMedium18,
                                          ),
                                          content: SizedBox(
                                            height: 250,
                                            width: 50,
                                            child: ListView.builder(
                                                itemBuilder: (context, index) {
                                                  return Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text(
                                                        SettingModel
                                                            .regionItem[index]
                                                            .title,
                                                        style: AppTextStyle
                                                            .styleRegular15
                                                            .copyWith(
                                                            color: AppColors
                                                                .blackTextColor),
                                                      ),
                                                      Checkbox(
                                                        activeColor:
                                                        AppColors.greenColor,
                                                        value: isChecked,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            isChecked = value!;
                                                          });
                                                        },
                                                      )
                                                    ],
                                                  );
                                                },
                                                itemCount: SettingModel
                                                    .regionItem.length),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: AppColors
                                                        .greenColor),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text(
                                                'Confirm',
                                                style: TextStyle(
                                                    color: AppColors
                                                        .greenColor),
                                              ),
                                              onPressed: () {
                                                // Handle the confirm action
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 5.0, bottom: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                11),
                                            border: Border.all(
                                                color: Colors.grey
                                                    .withOpacity(0.5)),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: [Text(AppStrings.cairo,
                                                style: AppTextStyle
                                                    .styleRegular15
                                            ),
                                              SizedBox(width: 7),
                                              Icon(Icons.arrow_drop_down,
                                                  color: Colors.grey)
                                            ],
                                          )

                                      ),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/ahella/arrow-down.svg'),
            ],
          ),
        ),
        const SizedBox(height: 26),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/ahella/shopping-cart.svg'),
              const SizedBox(width: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '2-3 days',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/ahella/arrow-down.svg'),
            ],
          ),
        ),
        const SizedBox(height: 26),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/ahella/percent.svg'),
              const SizedBox(width: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Code',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- £200',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: MyColors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text('ST#132'),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('assets/ahella/right.svg'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
