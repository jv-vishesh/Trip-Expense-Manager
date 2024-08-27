import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextFormField.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
        centerTitle: true,
        title: const AppTextWidget(
          txtTitle: 'Login',
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              100.verticalSpace,
              AppTextFormField(
                hintText: "Email",
                hintTextColor: AppColors.darkGrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              15.verticalSpace,
              AppTextFormField(
                hintText: "Password",
                isPassword: true,
                hintTextColor: AppColors.darkGrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              30.verticalSpace,
              AppButtonWidget(
                onPressed: () {
                  Get.offNamed(RoutesName.bottomBarScreen);
                },
                btnName: 'Log In',
                btnColor: AppColors.primary,
                width: double.maxFinite,
                fontSize: 18,
                borderRadius: 16,
                // margin: EdgeInsets.symmetric(horizontal: 15.w),
                padding: EdgeInsets.symmetric(vertical: 15.h),
              ),
              30.verticalSpace,
              AppTextWidget(
                txtTitle: "Forgot Password?",
                fontWeight: FontWeight.w600,
                fontSize: 20,
                txtColor: AppColors.primary,
              ),
              30.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppTextWidget(
                    txtTitle: "Don’t have an account yet? ",
                    txtColor: AppColors.darkGrey,
                    fontSize: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.signUpScreen);
                    },
                    child: const AppTextWidget(
                      txtTitle: "Sign Up",
                      txtColor: AppColors.primary,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
