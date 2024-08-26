import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';

enum IntroEnum {
  controllerMoney(IntroClass(
      image: AppAssets.controllerMoney,
      title: 'Gain total control\n of your money',
      subTitle: 'Become your own money manager and make every cent count')),
  receiptImage(IntroClass(
      image: AppAssets.receiptImage,
      title: 'Know where your\n money goes',
      subTitle:
          'Track your transaction easily,\n with categories and financial report')),
  planImage(IntroClass(
      image: AppAssets.planImage,
      title: 'Planning ahead',
      subTitle: 'Setup your budget for each category\n so you in control'));

  final IntroClass value;

  const IntroEnum(this.value);
}

class IntroClass {
  final String image;
  final String title;
  final String subTitle;

  const IntroClass(
      {required this.image, required this.title, required this.subTitle});
}
