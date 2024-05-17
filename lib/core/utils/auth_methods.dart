import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/core/constants/app_methods.dart';
import 'package:fibrohospital/screens/ui/doctor/general_doctor_home_screen.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthUtil {
  static Future<void> registerUser(
      {required BuildContext context,
      required GlobalKey<FormState> formKey,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      required TextEditingController nameController,
      required bool isLoading,
      required Function(bool) setLoading,
      required String collectionName}) async {
    if (formKey.currentState != null) {
      final isValid = formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
      if (isValid) {
        formKey.currentState!.save();
        try {
          setLoading(true);

          final auth = FirebaseAuth.instance;
          final authResult = await auth.createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );
          final user = authResult.user;
          final uid = user!.uid;

          await FirebaseFirestore.instance
              .collection(collectionName)
              .doc(uid)
              .set({
            'userId': uid,
            'userName': nameController.text,
            'userEmail': emailController.text.toLowerCase(),
            'createdAt': Timestamp.now(),
          });

          Fluttertoast.showToast(
            msg: "An account has been created",
            toastLength: Toast.LENGTH_SHORT,
            textColor: Colors.white,
          );

          Navigator.pushNamed(context, GeneralDoctorHomeScreen.routeName);
        } on FirebaseAuthException catch (error) {
          await AppMethods.showErrorORWarningDialog(
            context: context,
            subtitle: "An error has been occurred ${error.message}",
            fct: () {},
          );
        } catch (error) {
          await AppMethods.showErrorORWarningDialog(
            context: context,
            subtitle: "An error has been occurred $error",
            fct: () {},
          );
        } finally {
          setLoading(false);
        }
      }
    }
  }

  static Future<void> loginUser({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required bool isLoading,
    required Function(bool) setLoading,
  }) async {
    if (formKey.currentState != null) {
      final isValid = formKey.currentState!.validate();

      FocusScope.of(context).unfocus();

      if (isValid) {
        formKey.currentState!.save();
        try {
          setLoading(true);

          final auth = FirebaseAuth.instance;
          await auth.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

          Fluttertoast.showToast(
            msg: "Login Successfully",
            toastLength: Toast.LENGTH_SHORT,
            textColor: Colors.white,
          );

          routeHomeName = GeneralDoctorHomeScreen.routeName;
          Navigator.pushNamed(context, GeneralDoctorHomeScreen.routeName);
        } on FirebaseAuthException catch (error) {
          if (error.code == 'user-not-found') {
            await AppMethods.showErrorORWarningDialog(
              context: context,
              subtitle: "No user found for that email.",
              fct: () {},
            );
          } else if (error.code == 'wrong-password') {
            await AppMethods.showErrorORWarningDialog(
              context: context,
              subtitle: "Wrong password provided for that user.",
              fct: () {},
            );
          } else {
            await AppMethods.showErrorORWarningDialog(
              context: context,
              subtitle: "${error.message}",
              fct: () {},
            );
          }
        } catch (error) {
          await AppMethods.showErrorORWarningDialog(
            context: context,
            subtitle: "$error",
            fct: () {},
          );
        } finally {
          setLoading(false);
        }
      }
    }
  }
}
