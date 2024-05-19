part of 'profile_edit_cubit.dart';

//import 'package:flutter/cupertino.dart';

@immutable
sealed class profileEditState {}

final class profileEditinitial extends profileEditState {}

final class profileEditSuccess extends profileEditState {}

final class profileEditFailure extends profileEditState {
  final String errMessage;

  profileEditFailure({required this.errMessage});
}

//final class SignUpLoading extends profileEditState {}