import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app/app_text_styles.dart';
import '../helpers/assets_helper.dart';
import '../helpers/color_helper.dart';

class StaticMethods{
  static changeStatusBar(){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
  static Widget svgPicture(String imgPath ,{Color? color}){
    return SvgPicture.asset(
      '${AssetsHelper.imgBaseURL}$imgPath',
      fit: BoxFit.none,
      color: color,
    );
  }
  static Widget imageAsset(String imgPath){
    return  Image.asset(
      '${AssetsHelper.imgBaseURL}$imgPath',
      alignment: AlignmentDirectional.center,
    );
  }
  static BoxShadow buildBoxShadow(){
    return BoxShadow(
      offset: Offset(0, 3.h),
      blurRadius: 6.r,
      color: ColorHelper.black_0F,
    );
  }
  static Widget buildCircleAvatar(){
    return CircleAvatar(
      radius: 63.5.r,
      //TODO: take from firebase
      backgroundImage: const NetworkImage(AssetsHelper.defaultProfileImg,),
    );
  }
  static Widget emptyWidget(String text , String imaPath){
    return Column(
      children: [
        SizedBox(height: 154.h,),
        imageAsset(imaPath),
        SizedBox(height: 30.h,),
        Text(text,style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.blue,size: 20),),
      ],
    );
  }
  static closeDrawer(context){
    //Scaffold.of(context).closeDrawer();
    //Get.off
  }
}

enum OrderStatus{
  Ongoing,
  Delivered,
  UnDelivered,
}
