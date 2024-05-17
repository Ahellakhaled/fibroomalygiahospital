import 'package:fibrohospital/core/constants/app_methods.dart';
import 'package:fibrohospital/core/constants/validators.dart';
import 'package:fibrohospital/core/widgets/loading_widget.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/screens/ui/patient/general_patient_home_screen.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:fibrohospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibrohospital/utils/styles/assets/app_assets.dart';
import 'package:fibrohospital/utils/styles/colors/app_colors.dart';
import 'package:fibrohospital/utils/widgets/custom_background.dart';
import 'package:fibrohospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class PatientSignUp extends StatefulWidget {
  static const String routeName = 'PatientSignUp';

  const PatientSignUp({super.key});

  @override
  State<PatientSignUp> createState() => _PatientSignUpState();
}

class _PatientSignUpState extends State<PatientSignUp> {
  late bool currentBool = false;
  late final TextEditingController _nameController,
      _emailController,
      _passwordController,
      _confirmPasswordController;
  late final FocusNode _nameFocusNode,
      _emailFocusNode,
      _passwordFocusNode,
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
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _confirmPasswordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          routeHomeName = GeneralPatientHomeScreen.routeName;
          Navigator.pushNamed(context, GeneralPatientHomeScreen.routeName);
          _isLoading = false;
        } else if (state is SignUpFailure) {
          AppMethods.showErrorORWarningDialog(
            context: context,
            subtitle: "An error has been occured ${state.errMessage}",
            fct: () {},
          );
          _isLoading = false;
        } else {
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height * .20,
                            ),
                            Text(
                              AppStrings.patientSignUpTitle,
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
                                  collectionName: 'patients',
                                );
                              },
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, PatientLogIn.routeName);
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
                      ),
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
