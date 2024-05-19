part of 'patientprofilecubits.dart';

@immutable
sealed class PatientProfileState {}

final class SignUpInitial extends PatientProfileState {}

final class SignUpSuccess extends PatientProfileState {}

final class SignUpFailure extends PatientProfileState {
final String errMessage;

SignUpFailure({required this.errMessage});
}

final class SignUpLoading extends PatientProfileState {}