class DoctorChatModel {
  String Name;
  String imagePath;
  String Message;
  String Time;


  DoctorChatModel({
    required this.Name,
    required this.imagePath,
    required this.Message,
    required this.Time,
  });
  static List<DoctorChatModel> chat = [
    DoctorChatModel(
        Name: 'Mazen Ehab',
        imagePath: 'assets/images/mazenpatient.jpg',
        Message: '  Can I Have Help',
        Time: '10:03 Am'),
    DoctorChatModel(
        Name: 'Yahia Azzam',
        imagePath: 'assets/images/yahyapatient.jpg',
        Message: 'Hello Doctor',
        Time: '10:30 Am'),
  ];
  static List<DoctorChatModel> patient = [
  DoctorChatModel(
      Name: 'Dr.Hossam ',
      imagePath: 'assets/images/hossam-emara-psychiatry.jpg',
  Message:'Hello Dear Patient',
  Time: '10:00 am'),
    DoctorChatModel(
        Name: 'Dr.Hany ',
        imagePath: 'assets/images/hany-botrosimmu.jpg',
  Message:'Hello Dear Patient',
  Time: '10:03 Am'),
    DoctorChatModel(
        Name: 'Dr.Mohamed ',
        imagePath: 'assets/images/mohamed-farouk-saber-hematology.jpg',
        Message:'HI Dear Patient',
        Time: '10:30 Am'),

  ];
}