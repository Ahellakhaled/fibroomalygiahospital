import 'package:fibrohospital/my_app.dart';
import 'package:flutter/material.dart';
import 'core/local_database/catch_helper.dart';
import 'core/local_database/services_locator.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await setup();
  await getIt<CacheHelper>().cacheInit();
  runApp(const FibromyalgiaApp());
}
