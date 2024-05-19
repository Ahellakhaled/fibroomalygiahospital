import 'package:fibrohospital/core/constants/app_methods.dart';
import 'package:fibrohospital/core/constants/validators.dart';
import 'package:fibrohospital/core/widgets/loading_widget.dart';
import 'package:fibrohospital/screens/ui/doctor/general_doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../patient/patient_home/widgets/custom_add_record_show_model.dart';

class DoctorSignUp extends StatefulWidget {
  static const String routeName = 'DoctorSignUp';

  const DoctorSignUp({super.key});

  @override
  State<DoctorSignUp> createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  late bool currentBool = false;
  late final TextEditingController _nameController,
      _emailController,
      _passwordController,
      _yearsOfExperineceController,
      _licenseNoController,
      _licensingOrganizationController,
      _confirmPasswordController;

  late final FocusNode _nameFocusNode,
      _emailFocusNode,
      _passwordFocusNode,
      _yearsOfExperineceFocusNode,
      _licenseNoFocusNode,
      _licensingOrganizationFocusNode,
      _confirmPasswordFocusNode;
  late final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool _isLoading = false;
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _yearsOfExperineceController = TextEditingController();
    _licenseNoController = TextEditingController();
    _licensingOrganizationController = TextEditingController();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
    _yearsOfExperineceFocusNode = FocusNode();
    _licenseNoFocusNode = FocusNode();
    _licensingOrganizationFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _licenseNoController.dispose();
    _licensingOrganizationController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _yearsOfExperineceController.dispose();
    _confirmPasswordFocusNode.dispose();
    _yearsOfExperineceFocusNode.dispose();
    _licenseNoFocusNode.dispose();
    _licensingOrganizationFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          routeHomeName = GeneralDoctorHomeScreen.routeName;
          Navigator.pushNamed(context, GeneralDoctorHomeScreen.routeName);
          _isLoading = false;
        } else if (state is SignUpFailure) {
          AppMethods.showErrorORWarningDialog(
            context: context,
            subtitle: "An error has been occured ${state.errMessage}",
            fct: () {},
          );
          _isLoading = false;
        } else {
          //Loading State
          _isLoading = true;
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: AppColors.appBackgroundColor,
            resizeToAvoidBottomInset: true,
            body: LoadingWidget(
              isLoading: _isLoading,
              child: Stack(
                children: [
                  const CustomBackground(),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: ListView(children: [
                        Column(
                          children: [
                            SizedBox(
                              height: height * .15,
                            ),
                            Text(
                              AppStrings.doctorSignUpTitle,
                              style: AppTextStyle.styleRegular28
                                  .copyWith(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              AppStrings.patientSignUpDesc,
                              style: AppTextStyle.styleRegular15,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    child: FittedBox(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: const CustomSocialMediaContainer(
                                            text: AppStrings.google,
                                            image: AppAssets.google),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: FittedBox(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: const CustomSocialMediaContainer(
                                            text: AppStrings.facebook,
                                            image: AppAssets.facebook),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  CustomTextFieldTwo(
                                    controller: _nameController,
                                    focusNode: _nameFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.name,
                                    labelText: 'Full name',
                                    prefixIcon: IconlyLight.profile,
                                    validator: (value) {
                                      return Validators.displayNamevalidator(
                                          value);
                                    },
                                    onFieldSubmitted: (value) {
                                      FocusScope.of(context)
                                          .requestFocus(_emailFocusNode);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextFieldTwo(
                                    controller: _emailController,
                                    focusNode: _emailFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    labelText: 'Email address',
                                    prefixIcon: IconlyLight.message,
                                    validator: (value) {
                                      return Validators.emailValidator(value);
                                    },
                                    onFieldSubmitted: (value) {
                                      FocusScope.of(context)
                                          .requestFocus(_passwordFocusNode);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextFieldTwo(
                                    controller: _passwordController,
                                    focusNode: _passwordFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: obscureText,
                                    labelText: 'Password',
                                    prefixIcon: IconlyLight.lock,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    validator: (value) {
                                      return Validators.passwordValidator(
                                          value);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextFieldTwo(
                                    controller: _yearsOfExperineceController,
                                    focusNode:  _yearsOfExperineceFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: obscureText,
                                    labelText: 'Years of Experience',
                                    prefixIcon: IconlyLight.activity,
                                    validator: (value) {
                                      return Validators.passwordValidator(
                                          value);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextFieldTwo(
                                    controller: _licenseNoController,
                                    focusNode: _licenseNoFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: obscureText,
                                    labelText: 'License No.',
                                    prefixIcon: IconlyLight.document,
                                    validator: (value) {
                                      return Validators.passwordValidator(
                                          value);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextFieldTwo(
                                    controller:  _licensingOrganizationController,
                                    focusNode:  _licensingOrganizationFocusNode,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: obscureText,
                                    labelText: 'Licensing Organization',
                                    prefixIcon: IconlyLight.bookmark,
                                    validator: (value) {
                                      return Validators.passwordValidator(
                                          value);
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    child:Text('Upload CV. *'),
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                          ),
                                        ),
                                        builder: (context) {
                                          return const CustomAddRecordShowModel();
                                        },

                                      );
                                    },),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: currentBool,
                                  onChanged: (newValue) {
                                    setState(() {
                                      currentBool = newValue!;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  activeColor: AppColors.greenColor,
                                ),
                                Text(
                                  AppStrings.terms,
                                  style: AppTextStyle.styleRegular15
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .06,
                            ),
                            CustomButton(
                              text: AppStrings.signup,
                              onTap: () async {
                                BlocProvider.of<SignUpCubit>(context)
                                    .registerUser(
                                        formKey: _formKey,
                                        context: context,
                                        emailController: _emailController,
                                        passwordController: _passwordController,
                                        nameController: _nameController,
                                        collectionName: 'doctors');
                              },
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, DoctorLogIn.routeName);
                              },
                              child: Text(
                                AppStrings.haveAnAccount,
                                style: AppTextStyle.styleRegular15.copyWith(
                                    fontSize: 14, color: AppColors.greenColor),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}



                                  // AuthUtil.registerUser(
                                  //   collectionName: 'doctors',
                                  //   context: context,
                                  //   formKey: _formKey,
                                  //   emailController: _emailController,
                                  //   passwordController: _passwordController,
                                  //   nameController: _nameController,
                                  //   isLoading: _isLoading,
                                  //   setLoading: (isLoading) {
                                  //     setState(() {
                                  //       _isLoading = isLoading;
                                  //     });
                                  //   },
                                  // );
//============================



  // Future<void> _registerFct() async {
  //   if (_formKey.currentState != null) {
  //     final isValid = _formKey.currentState!.validate();
  //     FocusScope.of(context).unfocus();
  //     if (isValid) {
  //       _formKey.currentState!.save();
  //       try {
  //         setState(() {
  //           _isLoading = true;
  //         });

  //         await auth.createUserWithEmailAndPassword(
  //           email: _emailController.text.trim(),
  //           password: _passwordController.text.trim(),
  //         );
  //         User? user = auth.currentUser;
  //         final uid = user!.uid;

  //         await FirebaseFirestore.instance.collection("users").doc(uid).set({
  //           'userId': uid,
  //           'userName': _nameController.text,
  //           'userEmail': _emailController.text.toLowerCase(),
  //           'createdAt': Timestamp.now(),
  //         });
  //         Fluttertoast.showToast(
  //           msg: "An account has been created",
  //           toastLength: Toast.LENGTH_SHORT,
  //           textColor: Colors.white,
  //         );
  //         if (!mounted) return;
  //         routeHomeName = GeneralDoctorHomeScreen.routeName;
  //         Navigator.pushNamed(context, GeneralDoctorHomeScreen.routeName);
  //       } on FirebaseAuthException catch (error) {
  //         await AppMethods.showErrorORWarningDialog(
  //           context: context,
  //           subtitle: "An error has been occured ${error.message}",
  //           fct: () {},
  //         );
  //       } catch (error) {
  //         await AppMethods.showErrorORWarningDialog(
  //           context: context,
  //           subtitle: "An error has been occured $error",
  //           fct: () {},
  //         );
  //       } finally {
  //         setState(() {
  //           _isLoading = false;
  //         });
  //       }
  //     }
  //   }
  // }
