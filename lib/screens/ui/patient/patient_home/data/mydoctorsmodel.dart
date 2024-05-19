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
      Name: 'Dr. Mohamed Ahmed',
      imagePath: 'assets/images/mohamed-ahmed-mansour-nutrition.jpg',
      SubTittle: 'Nutritionist',
      Description:
      '5 Years Experience',
      FirstRatio: '75 %',
      SecRatio: '60 Patient',
      Date: '8:00 pm today',
    ),
    MyDoctorModel(
        Name: 'Dr. Hossam emara',
        imagePath: 'assets/images/hossam-emara-psychiatry.jpg',
        SubTittle: ' Psychologist',
        Description:
        '7 Years Experience',
        FirstRatio: '80 %',
        SecRatio: '70 Patient',
        Date: 'Next Sunday At 2:00 pm'
    ),
    MyDoctorModel(
      Name:  'Dr.Amgad elhadad',
      imagePath: 'assets/images/Amgad elhadad immu.jpeg',
      SubTittle:'Immunologist',
      Description:
      '4 Years Experience',
      FirstRatio: '70 %',
      SecRatio: '85 Patient',
      Date: '12:00 pm tomorrow',
    ),
  ];
}