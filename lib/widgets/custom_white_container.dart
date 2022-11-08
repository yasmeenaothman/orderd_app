import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/helpers/color_helper.dart';

class CustomWhiteContainer extends StatelessWidget {
  const CustomWhiteContainer({
    Key? key,
    required this.child,
    required this.height,
    this.hasBorder = false,
    required this.padding,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final bool hasBorder;
  final EdgeInsetsDirectional padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height?.h,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border:hasBorder?Border.all(color: ColorHelper.blue):null,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3.h),
            blurRadius: 6.r,
            color: ColorHelper.black_0D,
          )
        ],
      ),
      child: child,
    );
  }
}
