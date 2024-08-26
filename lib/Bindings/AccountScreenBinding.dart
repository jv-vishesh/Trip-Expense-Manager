import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/AccountScreenController.dart';

class AccountScreenBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AccountScreenController());
    // TODO: implement dependencies
  }

}