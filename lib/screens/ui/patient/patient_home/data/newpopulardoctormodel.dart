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
      Name: 'Dr.Mohamed Ahmed',
      imagePath: 'assets/images/mohamed-ahmed-mansour-nutrition.jpg',
      Description:
      'Nutritionist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. Ahmed Hatem',
      imagePath: 'assets/images/Dr-ahmed-hatemimmu.png',
      Description:
      'Immunologist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. ElSayed Rageh',
      imagePath: 'assets/images/elsayed-ragehRheumatology.jpg',
      Description:
      'Rheumatologist',
    ),
    NewPopularDoctorModel(
      Name: 'Dr. Eslam Mohamed',
      imagePath: 'assets/images/Eslam Mohamed El Zaeem Hemat.jpeg',
      Description:
      'Hematologist',

    ),

    NewPopularDoctorModel(
      Name: 'Dr. Hossam Emara',
      imagePath: 'assets/images/hossam-emara-psychiatry.jpg',
      Description:
      'Psychologist',
    ),



  ];
}