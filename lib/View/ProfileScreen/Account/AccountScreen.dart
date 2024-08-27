import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/AccountScreenController.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class AccountScreen extends GetView<AccountScreenController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountScreenController>(
      init: controller,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const AppTextWidget(
              txtTitle: "Account",
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_rounded)),
          ),
          body: Container());
      }
    );
  }
}
