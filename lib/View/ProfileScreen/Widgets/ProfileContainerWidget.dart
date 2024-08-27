import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Router/RouteName.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';

class ProfileContainerWidget extends StatelessWidget {
  const ProfileContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 256.h,
      width: 356.w,
      padding:  EdgeInsets.symmetric(horizontal: 10.0.w,vertical: 20.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            onTap: (){
              Get.toNamed(RoutesName.accountScreen);
            },
            leading: SvgPicture.asset(
                height: 52.h,
                width: 52.w,
                fit: BoxFit.cover,
                AppAssets.walletImage),
            title: AppTextWidget(
              txtTitle: "Account",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          ListTile(
            onTap: (){
              print("object");
            },
            leading: SvgPicture.asset(
                height: 52.h,
                width: 52.w,
                fit: BoxFit.cover,
                AppAssets.settingsImage),
            title: AppTextWidget(
              txtTitle: "Settings",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          ListTile(
            onTap: (){
              print("object");
            },
            leading: SvgPicture.asset(
                height: 52.h,
                width: 52.w,
                fit: BoxFit.cover,
                AppAssets.logoutImage),
            title: AppTextWidget(
              txtTitle: "Logout",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
