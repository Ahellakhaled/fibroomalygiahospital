import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/Manager/cubit/store_cubit.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/medical_all_records_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/general_doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/patient/general_patient_home_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_setting/doctor_setting_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/add_record_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/doctor_appointment_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/doctor_appointment_screen_2.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_chat/doctor_chat_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_home/widgets/appointment_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/widgets/doctor_details/doctor_details_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_home/doctor_home_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_chat/doctor_messages_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/doctors_search_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/enable_location_screen.dart';
import 'package:fibrohospital/screens/screens_not_use/find_doctors_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/help_center_screen.dart';
import 'package:fibrohospital/screens/ui/initial_pages/views/on_boarding_screen.dart';
import 'package:fibrohospital/screens/ui/initial_pages/views/splash_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/location_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_sign_up.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/join_us_screen.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibrohospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_sign_up.dart';
import 'package:fibrohospital/screens/ui/my_cart_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/my_doctors_screen.dart';
import 'package:fibrohospital/screens/screens_not_use/ordars_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_chat/patient_chat_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/patient_details_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_home/patient_home_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_chat/patient_messages_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_patient/patients_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/pharmaciess_screen.dart';
import 'package:fibrohospital/screens/ui/general_screen/privacy_and_policy_screen.dart';
import 'package:fibrohospital/screens/ui/doctor/doctor_setting/doctor_profile/profile_doctor_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_profile/profile_patient_screen.dart';
import 'package:fibrohospital/screens/screens_not_use/select_time_screen.dart';
import 'package:fibrohospital/screens/ui/patient/patient_setting/patient_setting_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/ui/general_screen/Notifications_screen.dart';

class FibromyalgiaApp extends StatefulWidget {
  const FibromyalgiaApp({super.key});

  @override
  State<FibromyalgiaApp> createState() => _FibromyalgiaAppState();
}

class _FibromyalgiaAppState extends State<FibromyalgiaApp> {
  // @override
  // void initState() {
  //   FirebaseAuth.instance
  //       .authStateChanges()
  //       .listen((User? user) {
  //     if (user == null) {
  //       print('=======================User is currently signed out!');
  //     } else {
  //       print('===================User is signed in!');
  //     }
  //   });
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => StoreCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => LogInCubit(),
        ),
      ],
      // create: (context) => StoreCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
          MyCartScreen.routeName: (context) => const MyCartScreen(),
          EnableLocationScreen.routeName: (context) =>
              const EnableLocationScreen(),
          JoinUsScreen.routeName: (context) => const JoinUsScreen(),
          PatientSignUp.routeName: (context) => const PatientSignUp(),
          PatientLogIn.routeName: (context) => const PatientLogIn(),
          DoctorSignUp.routeName: (context) => const DoctorSignUp(),
          DoctorLogIn.routeName: (context) => const DoctorLogIn(),
          FindDoctorsScreen.routeName: (context) => const FindDoctorsScreen(),
          MyDoctorsScreen.routeName: (context) => const MyDoctorsScreen(),
          LocationScreen.routeName: (context) => const LocationScreen(),
          HelpCenterScreen.routeName: (context) => const HelpCenterScreen(),
          OrdersScreen.routeName: (context) => const OrdersScreen(),
          PatientScreen.routeName: (context) => const PatientScreen(),
          ProfileDoctorScreen.routeName: (context) => ProfileDoctorScreen(),
          ProfilePatientScreen.routeName: (context) => ProfilePatientScreen(),
          PatientSettingScreen.routeName: (context) =>
              const PatientSettingScreen(),
          DoctorChatScreen.routeName: (context) => const DoctorChatScreen(),
          PatientChatScreen.routeName: (context) => const PatientChatScreen(),
          PharmaciesScreen.routeName: (context) => const PharmaciesScreen(),
          AppointmentScreen.routeName: (context) => const AppointmentScreen(),
          DoctorsSearchScreen.routeName: (context) =>
              const DoctorsSearchScreen(),
          PatientDetailsScreen.routeName: (context) =>
              const PatientDetailsScreen(),
          SelectTimeScreen.routeName: (context) => SelectTimeScreen(),
          PatientHomeScreen.routeName: (context) => const PatientHomeScreen(),
          DoctorHomeScreen.routeName: (context) => const DoctorHomeScreen(),
          DoctorAppointmentScreen.routeName: (context) =>
              DoctorAppointmentScreen(),
          DoctorAppointmentScreen2.routeName: (context) =>
              const DoctorAppointmentScreen2(
                index: 50,
              ),
          AddRecordScreen.routeName: (context) => AddRecordScreen(),
          DoctorDetailsScreen.routeName: (context) =>
              const DoctorDetailsScreen(),
          PatientMessagesScreen.routeName: (context) =>
              const PatientMessagesScreen(),
          DoctorMessageScreen.routeName: (context) => DoctorMessageScreen(),
          GeneralPatientHomeScreen.routeName: (context) =>
              const GeneralPatientHomeScreen(),
          GeneralDoctorHomeScreen.routeName: (context) =>
              const GeneralDoctorHomeScreen(),
          NotificationsScreen.routeName: (context) =>
              const NotificationsScreen(),
          DoctorSettingScreen.routeName: (context) =>
              const DoctorSettingScreen(),
          PrivacyAndPolicy.routeName: (context) => const PrivacyAndPolicy(),
          MedicalAllRecordsScreen.routeName: (context) =>
              const MedicalAllRecordsScreen(),
        },
      ),
    );
  }
}
