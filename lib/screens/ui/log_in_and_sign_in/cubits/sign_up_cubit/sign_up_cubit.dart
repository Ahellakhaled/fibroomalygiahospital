import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> registerUser({
    required GlobalKey<FormState> formKey,
    required BuildContext context,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController nameController,
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
