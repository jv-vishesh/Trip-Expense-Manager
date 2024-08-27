import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          toolbarHeight: 90.h,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextWidget(
                txtTitle: "Name",
                fontSize: 28,
              ),
              5.verticalSpace,
              AppTextWidget(
                txtTitle: "Bon voyage!",
                fontSize: 18,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: CircleAvatar(
                minRadius: 25.r,
              ),
            ),
          ],
        ),
        floatingActionButton: AppButtonWidget(
          padding: EdgeInsets.all(13.r),
          borderRadius: 8,
          onPressed: () {},
          btnName: "",
          btnColor: AppColors.primary,
          child: Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 300.h,
                width: double.maxFinite,
                child: LottieBuilder.asset(AppAssets.tripAnimation),
              ),
            ),
            AppTextWidget(
              txtTitle: "You haven't gone any trip !!",
              fontSize: 20,
              txtColor: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}
