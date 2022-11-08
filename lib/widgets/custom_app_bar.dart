import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/color_helper.dart';

import '../helpers/assets_helper.dart';
import '../utils/static_methods.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppbar({
    Key? key,
    required this.title,
    required this.actions,
    this.haveBackIcon = false,
  }) : super(key: key);

  final String title;
  final bool haveBackIcon;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(58.h),
      child: Container(
       decoration: BoxDecoration(
         boxShadow: [
           StaticMethods.buildBoxShadow(),
         ]
       ),
        child: AppBar(
          shadowColor: ColorHelper.black_0F,
          title: Text(title, style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.blue,size: 22)),
          leading: IconButton(
            icon: StaticMethods.svgPicture(haveBackIcon? AssetsHelper.leftArrowIcon:AssetsHelper.menu),
            onPressed: () {
              haveBackIcon?Navigator.pop(context):Scaffold.of(context).openDrawer();
            },
          ),
          actions: actions,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(58.h);
}
