class SearchModel {
  String imagePath;
  String Name;
  String Description;
  String Rate;
  String Views;


  SearchModel({
    required this.imagePath,
    required this.Name,
    required this.Description,
    required this.Rate,
    required this.Views,
  });
  static List<SearchModel> All = [
    SearchModel(
      Name: 'Dr. Mohamed Farag',
      imagePath: 'assets/images/mohmeddent.jpg',
      Description:
      'Dentist',
      Rate: '4',
      Views: '(400 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ibrahim Mohamed',
      imagePath: 'assets/images/ibrahimheart.jpeg',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(400 Views)',
    ),
    SearchModel(
      Name: 'Dr. Shady Sherif',
      imagePath: 'assets/images/shadysherifphys.png',
      Description:
      'Physiotherapist',
      Rate: '2',
      Views: '(100 Views)',
    ),
    SearchModel(
      Name: 'Dr. Medhat Hegazy',
      imagePath: 'assets/images/medhathegazydent.png',
      Description:
      'Dentist',
      Rate: '5',
      Views: '(600 Views)',
    ),
    SearchModel(
      Name: 'Dr. Mahmoud Elkholy',
      imagePath: 'assets/images/mahmoudelkholyphys.png',
      Description:
      'Physiotherapist',
      Rate: '3',
      Views: '(250 Views)',
    ),
    SearchModel(
      Name: 'Dr. Tarek Elsayed',
      imagePath: 'assets/images/tarekelsayedheart.jpg',
      Description:
      'Specialist Cardiologist',
      Rate: '5',
      Views: '(700 Views)',
    ),
    SearchModel(
      Name: 'Dr. Loai Emad',
      imagePath: 'assets/images/loaiemaddent.jpg',
      Description:
      'Dentist',
      Rate: '3',
      Views: '(300 Views)',
    ),
    SearchModel(
      Name: 'Dr. Mohamed Sayed',
      imagePath: 'assets/images/mohamedsayedheart.png',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(450 Views)',
    ),
    SearchModel(
      Name: 'Dr. Moamen Hussein',
      imagePath: 'assets/images/moamenhussienphys.png',
      Description:
      'Physiotherapist',
      Rate: '5',
      Views: '(600 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Salah',
      imagePath: 'assets/images/ahmedsalahphys.png',
      Description:
      'Physiotherapist',
      Rate: '5',
      Views: '(750 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Mohsen',
      imagePath: 'assets/images/ahmedmohsenheart.png',
      Description:
      'Specialist Cardiologist',
      Rate: '3',
      Views: '(350 Views)',
    ),
    SearchModel(
      Name: 'Dr. Shady Ali',
      imagePath: 'assets/images/shadydent.png',
      Description:
      'Dentist',
      Rate: '5',
      Views: '(650 Views)',
    ),
    SearchModel(
      Name: 'Dr. sherif Rizk',
      imagePath: 'assets/images/sherifrizkheart.jpg',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(500 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Nagy',
      imagePath: 'assets/images/ahmednagydent.jpg',
      Description:
      'Dentist',
      Rate: '4',
      Views: '(500 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Shabaan',
      imagePath: 'assets/images/ahmedshabaanphys.png',
      Description:
      'Physiotherapist',
      Rate: '3',
      Views: '(300 Views)',
    ),
  ];
  static List<SearchModel> Dentist = [
    SearchModel(
      Name: 'Dr. Mohamed Farag',
      imagePath: 'assets/images/mohmeddent.jpg',
      Description:
      'Dentist',
      Rate: '4',
      Views: '(400 Views)',
    ),
    SearchModel(
      Name: 'Dr. Medhat Hegazy',
      imagePath: 'assets/images/medhathegazydent.png',
      Description:
      'Dentist',
      Rate: '5',
      Views: '(600 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Nagy',
      imagePath: 'assets/images/ahmednagydent.jpg',
      Description:
      'Dentist',
      Rate: '4',
      Views: '(500 Views)',
    ),
    SearchModel(
      Name: 'Dr. Loai Emad',
      imagePath: 'assets/images/loaiemaddent.jpg',
      Description:
      'Dentist',
      Rate: '3',
      Views: '(300 Views)',
    ),
    SearchModel(
      Name: 'Dr. Shady Ali',
      imagePath: 'assets/images/shadydent.png',
      Description:
      'Dentist',
      Rate: '5',
      Views: '(650 Views)',
    ),
  ];
  static List<SearchModel> Cardiology = [
    SearchModel(
      Name: 'Dr. Tarek Elsayed',
      imagePath: 'assets/images/tarekelsayedheart.jpg',
      Description:
      'Specialist Cardiologist',
      Rate: '5',
      Views: '(700 Views)',
    ),

    SearchModel(
      Name: 'Dr. Mohamed Sayed',
      imagePath: 'assets/images/mohamedsayedheart.png',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(450 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Mohsen',
      imagePath: 'assets/images/ahmedmohsenheart.png',
      Description:
      'Specialist Cardiologist',
      Rate: '3',
      Views: '(350 Views)',
    ),
    SearchModel(
      Name: 'Dr. sherif Rizk',
      imagePath: 'assets/images/sherifrizkheart.jpg',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(500 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ibrahim Mohamed',
      imagePath: 'assets/images/ibrahimheart.jpeg',
      Description:
      'Specialist Cardiologist',
      Rate: '4',
      Views: '(400 Views)',
    ),

  ];
  static List<SearchModel> physioTherapy = [
    SearchModel(
      Name: 'Dr. Ahmed Salah',
      imagePath: 'assets/images/ahmedsalahphys.png',
      Description:
      'Physiotherapist',
      Rate: '5',
      Views: '(750 Views)',
    ),
    SearchModel(
      Name: 'Dr. Moamen Hussein',
      imagePath: 'assets/images/moamenhussienphys.png',
      Description:
      'Physiotherapist',
      Rate: '5',
      Views: '(600 Views)',
    ),
    SearchModel(
      Name: 'Dr. Shady Sherif',
      imagePath: 'assets/images/shadysherifphys.png',
      Description:
      'Physiotherapist',
      Rate: '2',
      Views: '(100 Views)',
    ),
    SearchModel(
      Name: 'Dr. Mahmoud Elkholy',
      imagePath: 'assets/images/mahmoudelkholyphys.png',
      Description:
      'Physiotherapist',
      Rate: '3',
      Views: '(250 Views)',
    ),
    SearchModel(
      Name: 'Dr. Ahmed Shabaan',
      imagePath: 'assets/images/ahmedshabaanphys.png',
      Description:
      'Physiotherapist',
      Rate: '3',
      Views: '(300 Views)',
    ),
  ];
}