import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fibrohospital/utils/styles/Strings/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
part 'patientprofilestate.dart';

class PatientProfilecubit extends Cubit<PatientProfileState> {
  PatientProfilecubit() : super(SignUpInitial());

  Future<void> registerUser({
    required GlobalKey<FormState> formKey,
    required BuildContext context,
    required TextEditingController patientNameController,
    required TextEditingController  patientContactNumberController,
    required TextEditingController patientDateofbirthController,
    required TextEditingController passwordController,
    required String collectionName,
  }) async {
    if (formKey.currentState != null) {
      final isValid = formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
      if (isValid) {
        formKey.currentState!.save();
        emit(SignUpLoading());
        try {
          final auth = FirebaseAuth.instance;
          final authResult = await auth.verifyPhoneNumber(verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {},
            codeSent: (String verificationId, int? resendToken) {},
            codeAutoRetrievalTimeout: (String verificationId) {},


            phoneNumber: patientContactNumberController.text.trim(),
          );


          await FirebaseFirestore.instance
              .collection(collectionName)

              .get({
            'patientName': patientNameController.text,
            'patientContactNumber':patientContactNumberController.text,
            'patientDateOfBirth': patientDateofbirthController.text,
            'createdAt': Timestamp.now(),
          } as GetOptions?);

          Fluttertoast.showToast(
            msg: "An account has been created",
            toastLength: Toast.LENGTH_SHORT,
            textColor: Colors.white,
          );
          emit(SignUpSuccess());
        } on FirebaseAuthException catch (error) {
          if (error.code == 'weak-password') {
            emit(
              SignUpFailure(errMessage: 'The password provided is too weak.'),
            );
          }
          if (error.code == 'email-already-in-use') {
            emit(
              SignUpFailure(
                  errMessage: 'The account already exists for that email.'),
            );
          } else {
            emit(SignUpFailure(errMessage: error.toString()));
          }
        } catch (error) {
          emit(SignUpFailure(errMessage: error.toString()));
        }
      }
    }
  }
}