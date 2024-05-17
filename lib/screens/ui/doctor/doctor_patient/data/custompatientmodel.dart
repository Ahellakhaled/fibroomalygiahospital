class PatientModel {
  String imagePath;
  String Name;
  String Description;
  String Time;


  PatientModel({
    required this.imagePath,
    required this.Name,
    required this.Description,
    required this.Time,
  });

  static List<PatientModel> patient = [
    PatientModel(
      Name: 'Farag Ahmed ',
      imagePath: 'assets/images/patient.jpg',
      Description:
      'Online Consultation',
      Time: '4:00 pm',
    ),
    PatientModel(
      Name: 'Ibrahim Ayman',
      imagePath: 'assets/images/patient1.jpg',
      Description:
      'Online Consultation',
      Time: '6:00 pm',
    ),
    PatientModel(
      Name: 'Ahmed Hassan',
      imagePath: 'assets/images/ahmedpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '8:00 pm',
    ),
    PatientModel(
      Name: 'Anas Abdelrahman',
      imagePath: 'assets/images/patient2.jpg',
      Description:
      'Online Consultation',
      Time: '10:00 pm',
    ),
  ];
}