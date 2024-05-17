class NewFindDoctorModel {
  String imagePath;
  String Name;
  String SubTittle;
  String Description;
  String FirstRatio;
  String SecRatio;
  String Date;


  NewFindDoctorModel({
    required this.imagePath,
    required this.Name,
    required this.SubTittle,
    required this.Description,
    required this.FirstRatio,
    required this.SecRatio,
    required this.Date,
  });
  static List<NewFindDoctorModel> FindDoctor = [
    NewFindDoctorModel(
      Name: 'Dr. Aya',
      imagePath: 'assets/images/mohmeddent.jpg',
      SubTittle: ' physio therapist',
      Description:
      '10 Years Experience',
      FirstRatio: '87 %',
      SecRatio: '69 Patient',
      Date: 'Doctor Date: 10:00 Am tomorrow',
    ),
  ];
}