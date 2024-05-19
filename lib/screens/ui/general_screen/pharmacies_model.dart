class Pharmaciesmodel {
  String imagePath;
  String title;
  String subTitle;
  String number;
  double rate;

  Pharmaciesmodel({
    required this.title,
    required this.imagePath,
    required this.subTitle,
    required this.number,
    required this.rate,
  });

  static List<Pharmaciesmodel> pharmaModelAll = [
    Pharmaciesmodel(
      title: 'Ezaby Pharmacy',
      imagePath: 'assets/images/ezaby.jpg',
      subTitle:
      ' Central Spine, Area 101 3rd District, First Neighbourhood,Giza.',
      number: '02 35317347',
      rate: 5,
    ),
    Pharmaciesmodel(
      title: 'Misr Pharmacy',
      imagePath: 'assets/images/misr.jpg',
      subTitle:
      '1 Hassan Sabry St.,Zamalek \n Cairo,In front of Holland Embassy',
      number: '19110',
      rate: 4,
    ),
    Pharmaciesmodel(
      title: 'Seif Pharmacy',
      imagePath: 'assets/images/seif logo.jpg',
      subTitle: '309 Army Force Bldgs,\n El-Fardous City,6th of October,Giza',
      number: '01210593030',
      rate: 4,
    ),
    Pharmaciesmodel(
      title: '19011',
      imagePath: 'assets/images/pharmacy.jpg',
      subTitle: '9 Emad El-Din St., Downtown,\n Cairo',
      number: ' 19955',
      rate: 3.5,
    ),
    Pharmaciesmodel(
      title: 'Care Pharmacy',
      imagePath: 'assets/images/CAREpHARMA.png',
      subTitle:
      ' 53 Al Manial Main Street Pearl Tower – 2nd & 4th Floor, Cairo, Egypt..',
      number: '02 25322914',
      rate: 3.5,
    ),
    Pharmaciesmodel(
      title: 'Alserafy Pharmacy',
      imagePath: 'assets/images/elsarafi.png',
      subTitle:
      '19 El Batal Ahmed Abdel Aziz St.',
      number: '0233440400',
      rate: 2,
    ),
    Pharmaciesmodel(
      title: 'Al Ain Pharmacy',
      imagePath: 'assets/images/AleinPharma.png',
      subTitle:'29 syria St. Giza',
      number: '19124',
      rate: 3,
    ),
  ];

  static List<Pharmaciesmodel> pharmaModelTopRatied = [
    Pharmaciesmodel(
      title: 'Ezaby Pharmacy',
      imagePath: 'assets/images/ezaby.jpg',
      subTitle:
      ' Central Spine, Area 101 3rd District, First Neighbourhood,Giza.',
      number: '02 35317347',
      rate: 5,
    ),
    Pharmaciesmodel(
      title: 'Misr Pharmacy',
      imagePath: 'assets/images/misr.jpg',
      subTitle:
      '1 Hassan Sabry St.,Zamalek \n Cairo,In front of Holland Embassy',
      number: '19110',
      rate: 4,
    ),
    Pharmaciesmodel(
      title: 'Seif Pharmacy',
      imagePath: 'assets/images/seif logo.jpg',
      subTitle: '309 Army Force Bldgs,\n El-Fardous City,6th of October,Giza',
      number: '01210593030',
      rate: 4,
    ),
  ];
}