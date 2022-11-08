import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/color_helper.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      this.suffixIcon})
      : super(key: key);
  final String hintText;
  final Widget? suffixIcon;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      padding: EdgeInsetsDirectional.only(start: 20.w, end: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3.h),
            blurRadius: 6.r,
            color: ColorHelper.black_0D,
          ),
        ],
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          hintStyle: AppTextStyle.buildPoppinsMediumTextStyle(size: 14,color: ColorHelper.black_4D),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
