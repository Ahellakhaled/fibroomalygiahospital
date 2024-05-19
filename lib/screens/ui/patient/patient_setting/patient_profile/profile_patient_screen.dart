import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/core/widgets/loading_widget.dart';
import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/custom_profile_text_field.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/validators.dart';
import '../../../log_in_and_sign_in/cubits/patientprofilecubits.dart';

class ProfilePatientScreen extends StatefulWidget {

  static const String routeName = 'ProfilePatientScreen';

  @override
  State<ProfilePatientScreen> createState() => _ProfilePatientScreenState();
}

class _ProfilePatientScreenState extends State<ProfilePatientScreen> {

  late final TextEditingController _patientNameController;
  late final TextEditingController _patientContactNumberController;
  late final TextEditingController _patientDateofbirthController;
  late final TextEditingController _patientPasswordController;
  late final FocusNode _patientNameFocusNode;
  late final FocusNode _patientContactNumberFocusNode;
  late final FocusNode _patientDateofbirthFocusNode;
  late final FocusNode _patientPasswordFocusNode;
  late final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool obscureText = true;
  @override
  void initState() {
    _patientNameController = TextEditingController();
    _patientContactNumberController = TextEditingController();
    _patientDateofbirthController =  TextEditingController();
    _patientPasswordController =  TextEditingController();
    _patientNameFocusNode = FocusNode();
    _patientContactNumberFocusNode = FocusNode();
    _patientDateofbirthFocusNode =  FocusNode();
    _patientPasswordFocusNode=  FocusNode();
    super.initState();
  }
  @override
  void dispose() {
    _patientNameController.dispose();
    _patientContactNumberController.dispose();
    _patientDateofbirthController.dispose();
    _patientPasswordController.dispose();
    _patientNameFocusNode.dispose();
    _patientContactNumberFocusNode.dispose();
    _patientDateofbirthFocusNode.dispose();
    _patientPasswordFocusNode.dispose();
    super.dispose();
  }
  CollectionReference patientdata = FirebaseFirestore.instance.collection('patientdata');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return patientdata
        .add({
      ' name': _patientNameController.text,
      'contactnumber': _patientContactNumberController.text,
      'password': _patientPasswordController.text ,
      'dateofbirth':_patientDateofbirthController.text ,

    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: LoadingWidget(
        isLoading: _isLoading,
        child: Stack(
          children: [
            const CustomBackground(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: AppColors.greenColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0,left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomArrowBack(),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              AppStrings.profile,
                              style: AppTextStyle.styleMedium18,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      const Text(
                        AppStrings.setUpYourProfile,
                        style: AppTextStyle.styleMedium18,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            child: Image.asset(AppAssets.circlePatientPhoto,
                                fit: BoxFit.scaleDown),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.grey[400]),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Iconsax.camera))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child:  ListView(
                    children:[
                       Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.personalInformation,
                                style: AppTextStyle.styleMedium18,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomProfileTextField(
                                icon: Iconsax.personalcard,
                                labelName: AppStrings.name,
                                pController:_patientNameController,
                                focusNode:_patientNameFocusNode,
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  return Validators.displayNamevalidator(value);
                                },),
                              SizedBox(
                                height: 10,
                              ),
                              CustomProfileTextField(
                                icon: Iconsax.password_check,
                                labelName: AppStrings.password,
                                pController: _patientPasswordController,
                                focusNode:_patientPasswordFocusNode,
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  return Validators.passwordValidator(value);
                                },),
                              SizedBox(
                                height: 10,
                              ),
                              CustomProfileTextField(
                                icon: Icons.phone,
                                labelName: AppStrings.contactNumber,
                                pController: _patientContactNumberController,
                                focusNode:_patientContactNumberFocusNode,
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomProfileTextField(
                                  icon: Icons.date_range_rounded,
                                  labelName: AppStrings.dateOfBirth,
                                  pController: _patientDateofbirthController,
                                  focusNode:_patientDateofbirthFocusNode,
                                  textInputAction: TextInputAction.next

                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Center(child: CustomButton(text: 'Change my information',
                                onTap: addUser,
                                 )),
                              SizedBox(height: 20,),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
