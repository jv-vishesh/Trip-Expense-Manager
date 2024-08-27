import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trip_expance_manager/Controllers/ProfileScreenController.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';
import 'package:trip_expance_manager/View/ProfileScreen/Widgets/ProfileContainerWidget.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
        init: controller,
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.grey.shade100,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.h),
              child: Column(
                children: [
                  // ListTile(
                  //   tileColor: Colors.yellow,
                  //   title: AppTextWidget(txtTitle: "txtTitle"),
                  //   subtitle: AppTextWidget(txtTitle: "txtTitle"),
                  //   trailing: IconButton(onPressed: (){}, icon: Icon(
                  //     Icons.add
                  //   )),
                  //   contentPadding: EdgeInsets.zero,
                  //   leading: CircleAvatar(
                  //     radius: 50,
                  //     backgroundColor: Colors.red,
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundImage: const NetworkImage(
                            "https://cdn.pixabay.com/photo/2024/05/27/12/27/gargoyle-8791108_640.jpg"),
                      ),
                      10.horizontalSpace,
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextWidget(
                            txtTitle: "UserName",
                            fontSize: 14,
                            txtColor: AppColors.darkGrey,
                            fontWeight: FontWeight.w500,
                          ),
                          AppTextWidget(
                            txtTitle: "Vishesh Patel",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(AppAssets.editImage))
                    ],
                  ),
                  30.verticalSpace,
                  const ProfileContainerWidget(),
                ],
              ),
            ),
          );
        });
  }
}
