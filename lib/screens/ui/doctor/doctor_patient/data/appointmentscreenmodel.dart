class AppointmentModel {
  String imagePath;
  String Name;
  String Description;
  String Time;


  AppointmentModel({
    required this.imagePath,
    required this.Name,
    required this.Description,
    required this.Time,
  });

  static List<AppointmentModel> appointment = [
    AppointmentModel(
      Name: 'Ismail',
      imagePath: 'assets/images/eslampatient.jpeg',
      Description:
      'Online Consultation',
      Time: '4:00 pm',
    ),
    AppointmentModel(
      Name: 'Hassan Abdeltawab',
      imagePath: 'assets/images/hassanpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '5:00 pm',
    ),
    AppointmentModel(
      Name: 'Omar Kamel',
      imagePath: 'assets/images/omarpatient.jpeg',
      Description:
      'Online Consultation',
      Time: '6:00 pm',
    ),
    AppointmentModel(
      Name: ' Azzam',
      imagePath: 'assets/images/yahyapatient.jpg',
      Description:
      'Online Consultation',
      Time: '9:00 pm',
    ),

  ];
}