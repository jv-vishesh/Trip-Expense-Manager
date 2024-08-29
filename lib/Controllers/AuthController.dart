import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';

class AuthController extends GetxController {
  final firebaseAuth = FirebaseAuth.instance;
  UserCredential? userCredential;

  Future<void> authentication() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    userCredential = await firebaseAuth.signInWithCredential(credential);
    if (userCredential?.additionalUserInfo?.isNewUser ?? false) {
      Get.toNamed(RoutesName.signUpScreen);
    } else {
      Get.toNamed(RoutesName.bottomBarScreen);
    }
  }
}
