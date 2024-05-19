import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
part 'profile_edit_state.dart';

class profileEditCubit extends Cubit<profileEditState> {
  profileEditCubit() : super(profileEditinitial());

  Future<void> registerUser({
    required GlobalKey<FormState> formKey,
    required BuildContext context,
    required TextEditingController NameController,
    required TextEditingController phoneController,
    required TextEditingController DateofbirthController,
    required TextEditingController LocationController,
    required TextEditingController BiographyController,
    required TextEditingController emailController,
    required TextEditingController passwordController,


    required String collectionName,
  }) async {
    if (formKey.currentState != null) {
      final isValid = formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
      if (isValid) {
        formKey.currentState!.save();
        //emit(Us());
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
            'userName': NameController.text,
            'userEmail': emailController.text.toLowerCase(),
            'createdAt': Timestamp.now(),
          });

          Fluttertoast.showToast(
            msg: "An account has been created",
            toastLength: Toast.LENGTH_SHORT,
            textColor: Colors.white,
          );
        } catch (error) {
          emit(profileEditFailure(errMessage: error.toString()));
        }
      }
    }
  }
}
