import 'package:trip_expance_manager/Controllers/BaseController.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Models/AccountScreenModel.dart';

class AccountScreenController extends BaseController{
  final List<AccountScreenModel> accountList = [
    AccountScreenModel(
      subtitle: "₹200",
        title: "Wallet", imagePath: AppAssets.walletImage,onTap: (){
    }
    ),
    AccountScreenModel(
        subtitle: "₹20000",
        title: "Chase", imagePath: AppAssets.chaseImage),
    AccountScreenModel(subtitle: "₹1200",title: "Citi", imagePath: AppAssets.citiImage),
    AccountScreenModel(subtitle: "₹2000",title: "PayPal", imagePath: AppAssets.payPalImage),
  ];
}