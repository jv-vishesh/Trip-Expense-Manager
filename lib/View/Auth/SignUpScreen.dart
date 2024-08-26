import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextFormField.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: 28,
          ),
        ),
        title: AppTextWidget(
          txtTitle: 'Sign Up',
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              50.verticalSpace,
              AppTextFormField(
                hintText: "Name",
                hintTextColor: AppColors.darkgrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              10.verticalSpace,
              AppTextFormField(
                hintText: "Email",
                hintTextColor: AppColors.darkgrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              10.verticalSpace,
              AppTextFormField(
                isPassword: true,
                hintText: "Password",
                hintTextColor: AppColors.darkgrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              10.verticalSpace,
              AppTextFormField(
                isPassword: true,
                hintText: "Confirm Password",
                hintTextColor: AppColors.darkgrey,
                borderRadius: 15,
                fontSize: 16,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                fillColor: AppColors.white,
              ),
              20.verticalSpace,
              Row(
                children: [
                  Transform.scale(
                    scale: 1.3.r,
                    child: Checkbox(
                      overlayColor:
                          const MaterialStatePropertyAll(AppColors.primary),
                      value: false,
                      side: BorderSide(color: AppColors.primary, width: 1.3.w),
                      onChanged: (value) {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r)),
                    ),
                  ),
                  10.horizontalSpace,
                  const Flexible(
                    child: AppTextWidget(
                        fontSize: 14,
                        txtTitle:
                            "By signing up, you agree to the Terms of Service and Privacy Policy"),
                  )
                ],
              ),
              20.verticalSpace,
              AppButtonWidget(
                onPressed: () {},
                btnName: 'Sign Up',
                btnColor: AppColors.primary,
                width: double.maxFinite,
                fontSize: 18,
                borderRadius: 16,
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                padding: EdgeInsets.symmetric(vertical: 15.h),
              ),
              15.verticalSpace,
              const AppTextWidget(
                txtTitle: "Or with",
                fontSize: 15,
                fontWeight: FontWeight.w700,
                txtColor: AppColors.darkgrey,
              ),
              15.verticalSpace,
              AppButtonWidget(
                onPressed: () {},
                btnName: '',
                btnColor: AppColors.white,
                width: double.maxFinite,
                borderColor: AppColors.black.withOpacity(0.2),
                fontSize: 18,
                borderRadius: 16,
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.googleIcon,
                      height: 30.h,
                      width: 30.h,
                    ),
                    10.horizontalSpace,
                    AppTextWidget(
                      txtTitle: "Sign Up with Google",
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppTextWidget(
                    txtTitle: "Already have an account? ",
                    txtColor: AppColors.darkgrey,
                    fontSize: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.loginScreen);
                    },
                    child: const AppTextWidget(
                      txtTitle: "Login",
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
