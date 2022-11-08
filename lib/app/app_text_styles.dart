import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orderd_app/helpers/color_helper.dart';

import '../helpers/assets_helper.dart';

class AppTextStyle{

  static buildPoppinsBoldTextStyle({Color? color = ColorHelper.blue, double? size = 24,}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: AssetsHelper.poppinsFontFamily,
      fontWeight: FontWeight.w700,
    );
  }
  static buildPoppinsMediumTextStyle({Color? color = Colors.black, double? size = 16,}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: AssetsHelper.poppinsFontFamily,
      fontWeight: FontWeight.w500,
    );
  }
  static buildPoppinsRegularTextStyle({Color? color = ColorHelper.blackB3, double? size = 15,}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: AssetsHelper.poppinsFontFamily,
      fontWeight: FontWeight.w400,
    );
  }
  static buildPoppinsSemiBoldTextStyle({Color? color = ColorHelper.blue, double? size = 20,}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: AssetsHelper.poppinsFontFamily,
      fontWeight: FontWeight.w600,
    );
  }
  static buildOpenSansSemiBoldTextStyle({Color? color = ColorHelper.blue, double? size = 13,}){
    return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: AssetsHelper.openSansFontFamily,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
    );
  }
}