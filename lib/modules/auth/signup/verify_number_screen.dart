import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/utils/constants.dart';

import '../../../app/app_text_styles.dart';
import '../../../helpers/color_helper.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              SizedBox(
                height: 113.h,
              ),
              Text(
                Constants.verifyNum,
                style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.blue,size: 18),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                Constants.enterPinCode,
                style: AppTextStyle.buildPoppinsRegularTextStyle(color: Colors.black,size: 16),
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
