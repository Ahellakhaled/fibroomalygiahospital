// every diagnostics model will have a 
//  title, subtitle, image, offer, tests, priceBeforeDiscount, priceAfterDiscount, discount,

class DiagnosticsModel {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String offer;
  final String tests;
  final String priceBeforeDiscount;
  final String priceAfterDiscount;
  final String discount;

  DiagnosticsModel({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.offer,
    required this.tests,
    required this.priceBeforeDiscount,
    required this.priceAfterDiscount,
    required this.discount,
  });

  static List<DiagnosticsModel> diagnostics = [
  DiagnosticsModel(
  title: 'Advanced Health Checkup',
  subTitle: 'Ideal for individuals aged 21-40 years',
  imageUrl: 'assets/ahella/diagnostics-1.png',
  offer: '+ 10% Health cashback T&C',
  tests: '69',
  discount: '35% off',
  priceBeforeDiscount: ' 358 EGP',
  priceAfterDiscount: '330 EGP',
  ),
  DiagnosticsModel(
  title: 'Working Women’s Health Checkup',
  subTitle: 'Ideal for individuals aged 21-40 years',
  imageUrl: 'assets/ahella/diagnostics-2.png',
  offer: '+ 10% Health cashback T&C',
  tests: '119',
  discount: '35% off',
  priceBeforeDiscount: '387 EGP',
  priceAfterDiscount: ' 345 EGP',
  ),
  DiagnosticsModel(
  title: 'Active Professional Health Checkup',
  subTitle: 'Ideal for individuals aged 21-40 years',
  imageUrl: 'assets/ahella/diagnostics-3.png',
  offer: '+ 10% Health cashback T&C',
  tests: '100',
  discount: '35% off',
  priceBeforeDiscount: '457 EGP',
  priceAfterDiscount: '411 EGP',
  ),];
}
