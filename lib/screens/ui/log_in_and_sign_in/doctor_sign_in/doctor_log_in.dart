import 'package:fibrohospital/core/constants/app_methods.dart';
import 'package:fibrohospital/core/constants/validators.dart';
import 'package:fibrohospital/core/widgets/loading_widget.dart';
import 'package:fibrohospital/screens/ui/doctor/general_doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_sign_up.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/widgets/custom_forget_password_container.dart';
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

class DoctorLogIn extends StatefulWidget {
  static const String routeName = 'DoctorLogIn';
  const DoctorLogIn({super.key});

  @override
  State<DoctorLogIn> createState() => _DoctorLogInState();
}

class _DoctorLogInState extends State<DoctorLogIn> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final FocusNode _emailFocusNode;
  late final FocusNode _passwordFocusNode;
  late final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool obscureText = true;
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSuccess) {
          routeHomeName = GeneralDoctorHomeScreen.routeName;
          Navigator.pushReplacementNamed(
              context, GeneralDoctorHomeScreen.routeName);
          _isLoading = false;
        } else if (state is LogInFailure) {
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
            // resizeToAvoidBottomInset: false,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * .18,
                            ),
                            Text(
                              AppStrings.welcomeBack,
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
                                    controller: _emailController,
                                    labelText: 'Email',
                                    focusNode: _emailFocusNode,
                                    textInputAction: TextInputAction.next,
                                    prefixIcon: IconlyLight.message,
                                    keyboardType: TextInputType.emailAddress,
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
                                    obscureText: obscureText,
                                    textInputAction: TextInputAction.none,
                                    prefixIcon: IconlyLight.lock,
                                    labelText: 'Password',
                                    keyboardType: TextInputType.visiblePassword,
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            CustomButton(
                                text: AppStrings.login,
                                onTap: () async {
                                  BlocProvider.of<LogInCubit>(context)
                                      .loginUser(
                                          context: context,
                                          formKey: _formKey,
                                          emailController: _emailController,
                                          passwordController:
                                              _passwordController);
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                  ),
                                  builder: (context) {
                                    return const CustomForgetPassContainer();
                                  },
                                );
                              },
                              child: Text(
                                AppStrings.forgotPassword,
                                style: AppTextStyle.styleRegular15.copyWith(
                                    fontSize: 14, color: AppColors.greenColor),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, DoctorSignUp.routeName);
                              },
                              child: Text(
                                AppStrings.doNotHaveAnAccount,
                                style: AppTextStyle.styleRegular15.copyWith(
                                    fontSize: 14, color: AppColors.greenColor),
                              ),
                            ),
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


  // Future<void> _loginFct() async {
  //   if (_formKey.currentState != null) {
  //     final isValid = _formKey.currentState!.validate();

  //     FocusScope.of(context).unfocus();

  //     if (isValid) {
  //       _formKey.currentState!.save();
  //       try {
  //         setState(() {
  //           _isLoading = true;
  //         });

  //         await auth.signInWithEmailAndPassword(
  //           email: _emailController.text.trim(),
  //           password: _passwordController.text.trim(),
  //         );

  //         Fluttertoast.showToast(
  //           msg: "Login Successfully",
  //           toastLength: Toast.LENGTH_SHORT,
  //           textColor: Colors.white,
  //         );
  //         if (!mounted) return;
  //         routeHomeName = GeneralDoctorHomeScreen.routeName;
  //         Navigator.pushNamed(context, GeneralDoctorHomeScreen.routeName);
  //       } on FirebaseAuthException catch (error) {
  //         if (error.code == 'user-not-found') {
  //           if (!mounted) return;

  //           await AppMethods.showErrorORWarningDialog(
  //             context: context,
  //             subtitle: "No user found for that email.",
  //             fct: () {},
  //           );
  //         } else if (error.code == 'wrong-password') {
  //           if (!mounted) return;

  //           await AppMethods.showErrorORWarningDialog(
  //             context: context,
  //             subtitle: "Wrong password provided for that user.",
  //             fct: () {},
  //           );
  //         } else {
  //           if (!mounted) return;

  //           await AppMethods.showErrorORWarningDialog(
  //             context: context,
  //             subtitle: "${error.message}",
  //             fct: () {},
  //           );
  //         }
  //       } catch (error) {
  //         await AppMethods.showErrorORWarningDialog(
  //           context: context,
  //           subtitle: "$error",
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
