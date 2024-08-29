import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/View/HistoryScreen/HistoryScreen.dart';
import 'package:trip_expance_manager/View/HomeScreen/HomeScreen.dart';
import 'package:trip_expance_manager/View/ProfileScreen/ProfileScreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 1;
  List screens = [
    const HistoryScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: CircleNavBar(
          activeIndex: index,
          activeIcons: const [
            Icon(
              Icons.pie_chart_outline,
              size: 40,
              color: AppColors.primary,
            ),
            Icon(
              Icons.home,
              size: 40,
              color: AppColors.primary,
            ),
            Icon(
              Icons.person,
              size: 40,
              color: AppColors.primary,
            )
          ],
          height: 70,
          circleWidth: 70,
          inactiveIcons: const [
            Icon(
              Icons.pie_chart_outline,
              size: 40,
            ),
            Icon(
              Icons.home,
              size: 40,
            ),
            Icon(
              Icons.person,
              size: 40,
            )
          ],
          color: AppColors.secondary,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }
}
