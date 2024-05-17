class MyDoctorModel {
  String imagePath;
  String Name;
  String SubTittle;
  String Description;
  String FirstRatio;
  String SecRatio;
  String Date;


  MyDoctorModel({
    required this.imagePath,
    required this.Name,
    required this.SubTittle,
    required this.Description,
    required this.FirstRatio,
    required this.SecRatio,
    required this.Date,
  });
  static List<MyDoctorModel> DoctorModel = [
    MyDoctorModel(
      Name: 'Dr. Loai Emad',
      imagePath: 'assets/images/loaiemaddent.jpg',
      SubTittle: 'Dentist',
      Description:
      '5 Years Experience',
      FirstRatio: '75 %',
      SecRatio: '60 Patient',
      Date: '8:00 pm today',
    ),
    MyDoctorModel(
        Name: 'Dr. Ahmed Mohsen',
        imagePath: 'assets/images/ahmedmohsenheart.png',
        SubTittle: 'Specialist Cardiologist',
        Description:
        '7 Years Experience',
        FirstRatio: '80 %',
        SecRatio: '70 Patient',
        Date: 'Next Sunday At 2:00 pm'
    ),
    MyDoctorModel(
      Name: 'Dr. Ahmed Shabaan',
      imagePath: 'assets/images/ahmedshabaanphys.png',
      SubTittle:'Physiotherapist',
      Description:
      '10 Years Experience',
      FirstRatio: '90 %',
      SecRatio: '85 Patient',
      Date: '12:00 pm tomorrow',
    ),
  ];
}