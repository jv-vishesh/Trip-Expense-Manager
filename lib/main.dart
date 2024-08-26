import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Router/GetxRouter.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCu6lV0YL4QkzGoYPA2tV43TidKFIsLyB8',
          appId: "1:458840070973:android:5c339f7855f0f003104354",
          messagingSenderId: "458840070973",
          projectId: "tip-expanse-manager"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (context, _) {
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'Trip Go',
              onGenerateRoute: generateRoute,
              initialRoute: RoutesName.profileScreen);
        });
  }
}
