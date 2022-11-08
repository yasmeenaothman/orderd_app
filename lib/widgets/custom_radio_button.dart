import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../app/app_text_styles.dart';
import '../modules/basic/payment/payment_screen_controller.dart';
import '../utils/constants.dart';

class CustomRadioButton extends StatelessWidget {

  CustomRadioButton({
    Key? key,
    required this.onChanged,
    required this.paymentType,
  }) : super(key: key);

  Map<String, dynamic> paymentType;
  Function(Object?) onChanged;
  PaymentScreenController controller = Get.find<PaymentScreenController>();
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: _buildRadioItem(),
      value: '${paymentType[Constants.labelKey]}',
      groupValue: controller.paymentSelected.value,
      onChanged: onChanged,
      activeColor: ColorHelper.blue,
    );
  }
  Widget _buildRadioItem(){
    return Row(
      children: [
        //SizedBox(width: 20.w,),
        StaticMethods.svgPicture(paymentType[Constants.iconKey]),
        SizedBox(width: 10.w,),
        Expanded(child: Text(paymentType[Constants.labelKey],style: AppTextStyle.buildPoppinsMediumTextStyle(),)),
        Visibility(
          visible: paymentType[Constants.labelKey] != Constants.cash,
          child: StaticMethods.svgPicture(AssetsHelper.downArrow),
        ),
      ],
    );
  }
}
