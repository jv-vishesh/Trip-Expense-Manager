import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppButtonWidget.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          10.verticalSpace,
          Center(
            child: Container(
              constraints: BoxConstraints(maxHeight: 550.h),
              child: Swiper(
                pagination: SwiperPagination(
                  margin: EdgeInsets.zero,
                  builder: DotSwiperPaginationBuilder(
                      space: 10.w,
                      activeColor: AppColors.primary,
                      color: AppColors.primary.withOpacity(0.4),
                      size: 10.r,
                      activeSize: 15.r),
                ),
                // control: SwiperControl(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          AppAssets.controllerMoney,
                          height: 320.h,
                          width: 320.h,
                        ),
                        const Flexible(
                            child: AppTextWidget(
                          txtTitle: "Gain total control\n of your money",
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          textAlign: TextAlign.center,
                        )),
                        10.verticalSpace,
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: const AppTextWidget(
                            txtTitle:
                                "Become your own money manager and make every cent count",
                            fontWeight: FontWeight.w400,
                            txtColor: AppColors.darkgrey,
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
          25.verticalSpace,
          AppButtonWidget(
            onPressed: () {},
            btnName: 'Sign Up',
            btnColor: AppColors.primary,
            width: double.maxFinite,
            fontSize: 18,
            borderRadius: 16,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            padding: EdgeInsets.symmetric(vertical: 15.h),
          ),
          20.verticalSpace,
          AppButtonWidget(
            onPressed: () {},
            btnName: 'Log In',
            btnColor: AppColors.secondary,
            width: double.maxFinite,
            fontSize: 18,
            txtColor: AppColors.primary,
            borderRadius: 16,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            padding: EdgeInsets.symmetric(vertical: 15.h),
          ),
          20.verticalSpace
        ],
      ),
    );
  }
}
