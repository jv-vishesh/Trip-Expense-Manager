import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/ProfileScreenController.dart';

class ProfileScreenBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> ProfileScreenController());
    // TODO: implement dependencies
  }

}