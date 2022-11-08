import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/constants.dart';
import 'package:orderd_app/utils/static_methods.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.selectedIndex,
    required this.isDelivery,
    required this.onTabChange,
  }) : super(key: key);

  final int selectedIndex;
  final bool isDelivery;
  final Function(int) onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(-0, -3.h),
            blurRadius: 6.r,
            color: ColorHelper.black_0F,
          )
        ],
      ),
      child: GNav(
        gap: isDelivery? 16.w:5.w,
        activeColor: ColorHelper.blue,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 22.h),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.transparent,
        color: Colors.black,
        tabs: Constants.tabs.map((e) => GButton(
          icon: e[Constants.iconKey],
          text: (e[Constants.nameKey] as String).split(' ').first,
        ),).toList(),
        selectedIndex: selectedIndex,
        onTabChange: onTabChange,
      ),
    );
  }
}

