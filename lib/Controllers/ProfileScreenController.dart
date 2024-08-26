import 'package:trip_expance_manager/Controllers/BaseController.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Models/ProfileScreenModel.dart';

class ProfileScreenController extends BaseController{
  final List<ProfileScreenModel> profileList = [
    ProfileScreenModel(title: "Account", imagePath: AppAssets.walletImage,onTap: (){
      print("object");
    }
    ),
    ProfileScreenModel(title: "Settings", imagePath: AppAssets.settingsImage),
    ProfileScreenModel(title: "Export Data", imagePath: AppAssets.exportDataImage),
    ProfileScreenModel(title: "Logout", imagePath: AppAssets.logoutImage),
  ];
}