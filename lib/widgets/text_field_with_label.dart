import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orderd_app/app/app_text_styles.dart';

class TextFieldWithLabel extends StatelessWidget {
  const TextFieldWithLabel({
    Key? key,
    required this.labelText,
    required this.onChanged,
    this.suffixIcon,
  }) : super(key: key);

  final String labelText;
  final Function(String) onChanged;
  final SvgPicture? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h,),
        Text(labelText,style: AppTextStyle.buildPoppinsMediumTextStyle(),),
        SizedBox(
          height: 40.h,
          child: TextField(
            decoration: InputDecoration(suffixIcon: suffixIcon),
            cursorColor: Colors.grey,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
