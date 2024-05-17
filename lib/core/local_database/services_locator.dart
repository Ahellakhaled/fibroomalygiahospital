import 'package:fibrohospital/core/local_database/catch_helper.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;
 Future<void> setup()  async {
   getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
 }