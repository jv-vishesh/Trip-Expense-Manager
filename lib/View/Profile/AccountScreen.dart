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
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0.h),
            child: Column(
              children: [
                // Container(
                //   width: double.maxFinite,
                //   height: 200.h,
                //   decoration: const BoxDecoration(
                //     // color: Colors.red,
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //         image: AssetImage(AppAssets.bgImage1))
                //   ),
                //   child: const Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               AppTextWidget(
                //                 txtTitle: "Account Balance",
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 14,
                //                 txtColor: AppColors.darkGrey,
                //               ),
                //               AppTextWidget(
                //                 txtTitle: "₹9400",
                //                 fontWeight: FontWeight.w500,
                //                 fontSize: 40,
                //               ),
                //             ],
                //           ),
                // ),
                Stack(
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        child:
                            SvgPicture.asset(fit: BoxFit.cover, AppAssets.bgImage)),
                    // const Center(
                    //   child: Column(
                    //     children: [
                    //       AppTextWidget(
                    //         txtTitle: "Account Balance",
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 14,
                    //         txtColor: AppColors.darkGrey,
                    //       ),
                    //       AppTextWidget(
                    //         txtTitle: "₹9400",
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 40,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200.h,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextWidget(
                            txtTitle: "Account Balance",
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            txtColor: AppColors.darkGrey,
                          ),
                          AppTextWidget(
                            txtTitle: "₹9400",
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.accountList.length,
                    itemBuilder: (context,index){
                  return
                  Column(
                    children: [
                      ListTile(
                        trailing: AppTextWidget(txtTitle: controller.accountList[index].subtitle??"",fontSize: 18,fontWeight: FontWeight.w600,),
                        onTap: controller.accountList[index].onTap,
                        leading: SvgPicture.asset(controller.accountList[index].imagePath,),
                        title: AppTextWidget(
                          txtTitle: controller.accountList[index].title,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                      30.verticalSpace,
                    ],
                  );
                }),
                const Spacer(),
                AppButtonWidget(
                  onPressed: () {},
                  fontWeight: FontWeight.w600,
                  btnName: '+ Add new wallet',
                  btnColor: AppColors.primary,
                  width: double.maxFinite,
                  fontSize: 18,
                  txtColor: AppColors.secondary,
                  borderRadius: 16,
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
