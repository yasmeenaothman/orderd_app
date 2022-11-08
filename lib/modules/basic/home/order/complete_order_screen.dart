import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/widgets/custom_button.dart';

import '../../../../helpers/assets_helper.dart';
import '../../../../helpers/color_helper.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/static_methods.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_drawer.dart';
import '../../../../widgets/text_field_with_label.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [],
        haveBackIcon: true,
        title: Constants.completeOrder,
      ),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(Constants.orderDetails,style: AppTextStyle.buildPoppinsSemiBoldTextStyle(),),
                ...Constants.labels.getRange(0, 3).map((e) => TextFieldWithLabel(
                  labelText: e[Constants.labelKey],
                  onChanged: e[Constants.funKey],
                  suffixIcon: e[Constants.iconKey],
                )).toList(),
                Row(
                  children: [
                    ...Constants.labels.sublist(3).map((e) => Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: e[Constants.labelKey]==Constants.date?20.w:0),
                        child: TextFieldWithLabel(
                          labelText: e[Constants.labelKey],
                          onChanged: e[Constants.funKey],
                          suffixIcon: e[Constants.iconKey],
                        ),
                      ),
                    )).toList(),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    text: Constants.confirm,
                    width: 160.w,
                    onPressed: (){
                      Get.toNamed(Constants.yourOrderScreen);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
