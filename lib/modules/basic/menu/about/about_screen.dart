import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../../../../app/app_text_styles.dart';
import '../../../../helpers/assets_helper.dart';
import '../../../../helpers/color_helper.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/custom_app_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [],
        haveBackIcon: true,
        title: Constants.about,
      ),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 30.h, start: 27.w, end: 27.w),
          child: Column(
            children: [
              Text(Constants.aboutDescription, style: AppTextStyle.buildPoppinsMediumTextStyle(size: 12),),
              Expanded(child: StaticMethods.svgPicture(AssetsHelper.splashImg)),
            ],
          ),
        ),
      ),
    );
  }
}
