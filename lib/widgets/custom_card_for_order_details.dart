import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/color_helper.dart';

import 'custom_white_container.dart';

class CustomCardForOrderDetails extends StatelessWidget {
  const CustomCardForOrderDetails({
    Key? key,
    required this.title,
    required this.content,
    this.isPrice = false,
  }) : super(key: key);

  final String title;
  final String content;
  final bool isPrice;
  @override
  Widget build(BuildContext context) {
    return CustomWhiteContainer(
      height: 61.h,
      padding: EdgeInsetsDirectional.only(start: 20.w),
      child: Row(
        children: [
          Text(title,style: AppTextStyle.buildPoppinsMediumTextStyle(),),
          Expanded(
            child: Text(
              content,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyle.buildPoppinsMediumTextStyle(size: 15,color: isPrice? ColorHelper.blue: null),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
