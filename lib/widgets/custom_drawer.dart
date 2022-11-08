import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/constants.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../app/app_text_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        //physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 290.h,
            decoration: const BoxDecoration(
              color: ColorHelper.blue
            ),
            child: Column(
              children: [
                SizedBox(height: 50.h,),
                StaticMethods.buildCircleAvatar(),
                SizedBox(height: 20.h,),
                Text('Yasmeen',style: AppTextStyle.buildPoppinsRegularTextStyle(color: Colors.white),),
                SizedBox(height: 60.h,),
              ],
            ),
          ),
          SizedBox(height: 30.h,),
          ...Constants.drawerOptions.map((e) => _buildListTile(e)).toList(),
        ],
      ),

    );
  }
  Widget _buildListTile(Map e){
    return ListTile(
      contentPadding: EdgeInsetsDirectional.only(start: 15.w),
      leading: StaticMethods.svgPicture(e[Constants.iconKey],),
      title: Align(
        alignment: Alignment(-1.2.w, 0),
        child: Text(
          e[Constants.labelKey],
          style: AppTextStyle.buildPoppinsRegularTextStyle(color: Colors.black),
        ),
      ),
      onTap: e[Constants.funKey],
    );
  }
}
