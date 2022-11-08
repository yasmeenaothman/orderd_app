import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/app_text_styles.dart';
import '../../../helpers/assets_helper.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_radio_button.dart';
import '../../../widgets/custom_white_container.dart';
import 'payment_screen_controller.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);
  PaymentScreenController controller = Get.put(PaymentScreenController());
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(start: 27.w, end: 25.w, top: 30.h),
        child: Column(
          children: [
            Text(Constants.choosePayment,style: AppTextStyle.buildPoppinsSemiBoldTextStyle(),),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  CustomWhiteContainer(
                    padding: const EdgeInsetsDirectional.all(10),
                    height: null,
                    child:Column(children: Constants.paymentTypes.map((e) => CustomRadioButton(
                      paymentType: e,
                      //TODO: Pointer
                      onChanged: (value){controller.updatePaymentSelected(value as String);},
                    )).toList()
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  //TODO: wait the another design for this screen
                  /*CustomButton(
                    text: Constants.doneBtn,
                    width: 136.w,
                    onPressed: (){
                      Get.toNamed(Constants.orderAssignedScreen);
                    },
                  ),
                  SizedBox(height: 50.h,),*/
                  StaticMethods.imageAsset(AssetsHelper.imgPayment),
                ],
              ),
            ),
          ],
        ),
    );
  }
}