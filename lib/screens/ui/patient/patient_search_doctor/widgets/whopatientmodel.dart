import '../../../../../utils/styles/assets/app_assets.dart';

class WhoIsPatientModel {
  late String imagePath;
  late String title;


  WhoIsPatientModel({
    required this.title,
    required this.imagePath,

  });

  static List<WhoIsPatientModel> pharmaModelAll = [
    WhoIsPatientModel(
      title: 'Myself',
      imagePath: AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Son',
      imagePath: AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Daughter',
      imagePath:AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Wife',
      imagePath: AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Father',
      imagePath: AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Mother',
      imagePath: AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Grandfather',
      imagePath:AppAssets.doctorPhoto,
    ),
    WhoIsPatientModel(
      title: 'My Grandmother',
      imagePath: AppAssets.doctorPhoto,
    ),
  ];

}