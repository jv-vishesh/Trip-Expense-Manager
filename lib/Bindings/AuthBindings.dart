import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/AuthController.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthController());
  }
}
