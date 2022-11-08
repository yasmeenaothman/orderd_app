import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/static_methods.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.color = ColorHelper.blue,
    this.width = double.infinity,
    required this.onPressed,
    this.haveBorder = false,
    this.haveIcon = false,
  }) : super(key: key);

  final String text;
  final Color color;
  final double width;
  final VoidCallback onPressed;
  final bool haveBorder;
  final bool haveIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorHelper.black_0F,
            offset: Offset(0, 3.h),
            blurRadius: 6.r,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: _buildButtonStyle(),
        child: haveIcon
            ? _buildRow()
            : Center(
                child: Text(
                  text,
                  style: AppTextStyle.buildPoppinsMediumTextStyle(
                    color: color!= ColorHelper.blue?ColorHelper.blue: Colors.white,

                  ),
                ),
              ),
      ),
    );
  }

  Widget _buildRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,style: AppTextStyle.buildPoppinsMediumTextStyle(color: Colors.white),),
        SizedBox(
          width: 20.w,
        ),
        StaticMethods.svgPicture(AssetsHelper.arrow),
      ],
    );
  }
  _buildButtonStyle(){
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: haveBorder ? BorderSide(width: 1.w,color: ColorHelper.blue,): BorderSide.none,
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(color),
      fixedSize: MaterialStateProperty.all(Size(width.w, 44.h)),
    );
  }
}