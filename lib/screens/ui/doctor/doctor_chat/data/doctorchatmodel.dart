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
      Name: 'Ahmed Hassan',
      imagePath: 'assets/images/mohmeddent.jpg',
      Message: 'Hello Doctor',
      Time: '10:00 Am'),
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
  Name: ' Dr.Shady Ali ',
  imagePath: 'assets/images/shadydent.png',
  Message: 'Hello Dear Patient',
  Time: '10:00 am'),
    DoctorChatModel(
  Name: ' Dr.Mohamed Farag',
  imagePath: 'assets/images/mohmeddent.jpg',
  Message: 'Hello Dear Patient',
  Time: '10:03 Am'),
    DoctorChatModel(
        Name: ' Dr.Ahmed Nagy',
        imagePath: 'assets/images/ahmednagydent.jpg',
        Message: 'Hello Dear Patient',
        Time: '10:30 Am'),

  ];
}