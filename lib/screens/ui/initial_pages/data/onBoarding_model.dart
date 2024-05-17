class OnBoardingModel {
  String imagePath;
  String title;
  String subTitle;
  String nextBottom;
  String skip;

  OnBoardingModel({
    required this.title,
    required this.imagePath,
    required this.subTitle,
    required this.nextBottom,
    required this.skip,
  });

  static List<OnBoardingModel> onBoardingScreens = [
    OnBoardingModel(
        title: 'Find Trusted Doctors',
        imagePath: 'assets/images/on_Boarding_1.png',
        skip: 'Skip',
        subTitle:
            ' Find doctors you can trust with your health and well-being.',
        nextBottom: 'Next'),
    OnBoardingModel(
        title: 'Choose Best Doctors',
        imagePath: 'assets/images/on_Boarding_2.png',
        skip: 'Skip',
        subTitle:
            'Invest in your health with the right healthcare\n professional by your side.',
        nextBottom: 'Next'),
    OnBoardingModel(
        title: 'Easy Appointments',
        imagePath: 'assets/images/on_Boarding_3.png',
        skip: '',
        subTitle: 'Find and book appointments with doctors near you 24/7.',
        nextBottom: 'Get Started')
  ];
}
