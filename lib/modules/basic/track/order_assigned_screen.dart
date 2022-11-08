import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../app/app_text_styles.dart';
import '../../../../helpers/assets_helper.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/custom_button.dart';
import '../../../utils/static_methods.dart';

class OrderAssignedScreen extends StatelessWidget {
  const OrderAssignedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StaticMethods.imageAsset(AssetsHelper.imgOnWay),
            Text(Constants.orderAssigned,style: AppTextStyle.buildPoppinsSemiBoldTextStyle(),),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              text: Constants.trackOrder,
              onPressed: (){
                Get.toNamed(Constants.trackingOrderScreen);
              },
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomButton(
              text: Constants.backHome,
              onPressed: (){
                Get.toNamed(Constants.basicScreen);
              },
              haveBorder: true,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
