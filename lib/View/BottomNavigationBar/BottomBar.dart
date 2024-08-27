import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_expance_manager/Utils/Constants/AppAssets.dart';
import 'package:trip_expance_manager/Utils/Styling/AppColors.dart';
import 'package:trip_expance_manager/Utils/Widgets/AppTextWidget.dart';
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
  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationController = CircularBottomNavigationController(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: CircularBottomNavigation(
          [
            TabItem(Icons.pie_chart_outline, 'History', AppColors.primary),
            TabItem(Icons.home, 'Home', AppColors.primary),
            TabItem(Icons.person, 'Profile', AppColors.primary),
          ],
          controller: _navigationController,
          selectedCallback: (pageIndex) {
            setState(() {
              index = pageIndex ?? 0;
            });
          },
          selectedPos: index,
        ),
      ),
    );
  }
}
