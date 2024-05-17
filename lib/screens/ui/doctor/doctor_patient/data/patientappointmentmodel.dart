class PatientAppointmentModel {
  String imagePath;
  String Name;
  String Description;
  String Time;


  PatientAppointmentModel({
    required this.imagePath,
    required this.Name,
    required this.Description,
    required this.Time,
  });

  static List<PatientAppointmentModel> appointment = [
    PatientAppointmentModel(
      Name: 'Eslam Ismail',
      imagePath: 'assets/images/eslampatient.jpeg',
      Description:
      'Online Consultation',
      Time: '1:00 pm',
    ),
    PatientAppointmentModel(
      Name: 'Hassan Abdeltawab',
      imagePath: 'assets/images/hassanpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '2:00 pm',
    ),

    PatientAppointmentModel(
      Name: 'Yahia Azzam',
      imagePath: 'assets/images/yahyapatient.jpg',
      Description:
      'Online Consultation',
      Time: '6:00 pm',
    ),
    PatientAppointmentModel(
      Name: 'Mohamed Khaled',
      imagePath: 'assets/images/mohamedpatient.jpg',
      Description:
      'Online Consultation',
      Time: '7:00 pm',
    ),
    PatientAppointmentModel(
      Name: 'Mazen Ehab',
      imagePath: 'assets/images/mazenpatient.jpg',
      Description:
      'Online Consultation',
      Time: '8:00 pm',
    ),
    PatientAppointmentModel(
      Name: 'Mahmoud Ibrahim',
      imagePath: 'assets/images/mahmoudpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '9:00 pm',
    ),
    PatientAppointmentModel(
      Name: 'Omar Kamel',
      imagePath: 'assets/images/omarpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '3:00 pm',
    ),
  ];
}