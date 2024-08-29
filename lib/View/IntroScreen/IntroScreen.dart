import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/AuthController.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Constants/EnumClass.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class IntroScreen extends GetView<AuthController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Container(
              constraints: BoxConstraints(maxHeight: 550.h),
              child: Swiper(
                autoplay: true,
                pagination: SwiperPagination(
                  margin: EdgeInsets.zero,
                  builder: DotSwiperPaginationBuilder(
                      space: 10.w,
                      activeColor: AppColors.primary,
                      color: AppColors.secondary,
                      size: 10.r,
                      activeSize: 16.r),
                ),
                // control: SwiperControl(),
                itemCount: IntroEnum.values.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          IntroEnum.values[index].value.image,
                          height: 320.h,
                          width: 320.h,
                        ),
                        Flexible(
                            child: AppTextWidget(
                          txtTitle: IntroEnum.values[index].value.title,
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          textAlign: TextAlign.center,
                        )),
                        10.verticalSpace,
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: AppTextWidget(
                            txtTitle: IntroEnum.values[index].value.subTitle,
                            fontWeight: FontWeight.w400,
                            txtColor: AppColors.darkGrey,
                            fontSize: 14,
                            textAlign: TextAlign.center,
                          ),
                        )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Spacer(),
          AppButtonWidget(
            onPressed: () async {
              await controller.authentication();
            },
            btnName: '',
            btnColor: AppColors.primary,
            width: double.maxFinite,
            fontSize: 18,
            borderRadius: 16,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.googleIcon,
                  height: 25.h,
                  width: 25.h,
                ),
                10.horizontalSpace,
                const AppTextWidget(
                  txtTitle: "Login or Sign Up with google",
                  txtColor: AppColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )
              ],
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
