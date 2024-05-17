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
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Misr Pharmacy',
      imagePath: 'assets/images/misr.jpg',
      subTitle:
          '1 Hassan Sabry St.,Zamalek \n Cairo,In front of Holland Embassy',
      number: '19110',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Seif Pharmacy',
      imagePath: 'assets/images/seif logo.jpg',
      subTitle: '309 Army Force Bldgs,\n El-Fardous City,6th of October,Giza',
      number: '01210593030',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: '19011',
      imagePath: 'assets/images/pharmacy.jpg',
      subTitle: '9 Emad El-Din St., Downtown,\n Cairo',
      number: ' 19955',
      rate: 2.8,
    ),
  ];

  static List<Pharmaciesmodel> pharmaModelTopRatied = [
    Pharmaciesmodel(
      title: 'Ezaby Pharmacy',
      imagePath: 'assets/images/ezaby.jpg',
      subTitle:
          ' Central Spine, Area 101 3rd District, First Neighbourhood,Giza.',
      number: '02 35317347',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Misr Pharmacy',
      imagePath: 'assets/images/misr.jpg',
      subTitle:
          '1 Hassan Sabry St.,Zamalek \n Cairo,In front of Holland Embassy',
      number: '19110',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Seif Pharmacy',
      imagePath: 'assets/images/seif logo.jpg',
      subTitle: '309 Army Force Bldgs,\n El-Fardous City,6th of October,Giza',
      number: '01210593030',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: '19011',
      imagePath: 'assets/images/pharmacy.jpg',
      subTitle: '9 Emad El-Din St., Downtown,\n Cairo',
      number: ' 19955',
      rate: 2.8,
    ),
  ];
  static List<Pharmaciesmodel> pharmaModelNeareast = [
    Pharmaciesmodel(
      title: 'Ezaby Pharmacy',
      imagePath: 'assets/images/ezaby.jpg',
      subTitle:
          ' Central Spine, Area 101 3rd District, First Neighbourhood,Giza.',
      number: '02 35317347',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Misr Pharmacy',
      imagePath: 'assets/images/misr.jpg',
      subTitle:
          '1 Hassan Sabry St.,Zamalek \n Cairo,In front of Holland Embassy',
      number: '19110',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: 'Seif Pharmacy',
      imagePath: 'assets/images/seif logo.jpg',
      subTitle: '309 Army Force Bldgs,\n El-Fardous City,6th of October,Giza',
      number: '01210593030',
      rate: 2.8,
    ),
    Pharmaciesmodel(
      title: '19011',
      imagePath: 'assets/images/pharmacy.jpg',
      subTitle: '9 Emad El-Din St., Downtown,\n Cairo',
      number: ' 19955',
      rate: 2.8,
    ),
  ];
}
