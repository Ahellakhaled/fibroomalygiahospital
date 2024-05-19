import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/doctor_appointment_screen_2.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/widgets/custom_arrow_back.dart';

class DoctorAppointmentScreen extends StatefulWidget {
  DoctorAppointmentScreen({super.key});
  static const String routeName = 'DoctorAppointmentScreen';

  @override
  State<DoctorAppointmentScreen> createState() => _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
  late final TextEditingController _patientNameController;
  late final TextEditingController _patientContactNumberController;
  late final FocusNode _patientNameFocusNode;
  late final FocusNode _patientContactNumberFocusNode;
  late final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool obscureText = true;

  @override
  void initState() {
    _patientNameController = TextEditingController();
    _patientContactNumberController = TextEditingController();
    _patientNameFocusNode = FocusNode();
    _patientContactNumberFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _patientNameController.dispose();
    _patientContactNumberController.dispose();
    _patientNameFocusNode.dispose();
    _patientContactNumberFocusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          AppStrings.appointments,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: width,
                      height: height * .15,
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
                              child: Image.asset(AppAssets.doctorPhoto),
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
                                        const Text(
                                          'Dr. Pediatrician',
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
                                    const Text(
                                      'Specialist Cardiologist',
                                      style: AppTextStyle.styleRegular15,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 20,
                                          initialRating: 3,
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
                                          r'$',
                                          style: AppTextStyle.styleRegular15
                                              .copyWith(color: AppColors.greenColor,fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '28.00/h',
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(AppStrings.appointmentFor,style: AppTextStyle.styleMedium18,),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomProfileTextField(
                    icon: Iconsax.personalcard,
                    labelName: AppStrings.patientName,
                    pController: _patientNameController,
                    focusNode:_patientNameFocusNode,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 10,),
                  CustomProfileTextField(
                    icon: Icons.phone,
                    labelName: AppStrings.contactNumber,
                    pController: _patientContactNumberController,
                    focusNode:_patientContactNumberFocusNode,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 20,),
                  const Text(AppStrings.whoPatient,style: AppTextStyle.styleMedium18,),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: height * .2,
                      width: width,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: width * .4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.whiteColor),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppAssets.doctorPhoto,
                                    width: width,
                                    height: height*.14,

                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'My self',
                                    style: AppTextStyle.styleMedium18,
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      )),
                  const Expanded(child: SizedBox()),
                  Center(child: CustomButton(text: AppStrings.continueText,onTap: (){
                    Navigator.pushReplacementNamed(context, DoctorAppointmentScreen2.routeName);
                  },)),
                  const SizedBox(height: 30,),









                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
