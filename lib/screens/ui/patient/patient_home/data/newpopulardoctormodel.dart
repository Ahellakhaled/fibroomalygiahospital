class NewPopularDoctorModel {
  String imagePath;
  String Name;
  String Description;


  NewPopularDoctorModel({
    required this.imagePath,
    required this.Name,
    required this.Description,
  });

  static List<NewPopularDoctorModel> PopularDoctor = [
    NewPopularDoctorModel(
      Name: 'Dr. Medhat Hegazy',
      imagePath: 'assets/images/medhathegazydent.png',
      Description:
      'Dentist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. Ahmed Salah',
      imagePath: 'assets/images/ahmedsalahphys.png',
      Description:
      'Physiotherapist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. Tarek Elsayed',
      imagePath: 'assets/images/tarekelsayedheart.jpg',
      Description:
      'Specialist Cardiologist',

    ),

    NewPopularDoctorModel(
      Name: 'Dr. Moamen Hussein',
      imagePath: 'assets/images/moamenhussienphys.png',
      Description:
      'Physiotherapist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. Shady Ali',
      imagePath: 'assets/images/shadydent.png',
      Description:
      'Dentist',
    ),



  ];
}