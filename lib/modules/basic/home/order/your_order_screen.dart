import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orderd_app/widgets/custom_button.dart';
import 'package:orderd_app/widgets/custom_drawer.dart';
import 'package:orderd_app/widgets/custom_white_container.dart';

import '../../../../helpers/color_helper.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_card_for_order_details.dart';
import '../../../../widgets/custom_stepper.dart';
import 'order_controller.dart';

class YourOrderScreen extends StatelessWidget {
  YourOrderScreen({Key? key}) : super(key: key);

  OrderController controller = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(
        actions: [],
        haveBackIcon: true,
        title: Constants.yourOrder,
      ),
      drawer: const CustomDrawer(),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: GetX<OrderController>(
              builder: (controller)=>Column(
                children: [
                  SizedBox(height: 30.h),
                  CustomCardForOrderDetails(
                    title: Constants.yourProd,
                    content: controller.orderConfirmed.value!.productName,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  _fromToCard(),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomCardForOrderDetails(
                    title: Constants.price,
                    content: '${controller.orderConfirmed.value!.price} \$',
                    isPrice: true,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  _buildRowOfButtons(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _fromToCard(){
    return CustomWhiteContainer(
      padding: const EdgeInsetsDirectional.all(20),
      height: null,
      child: Column(
        children: [
          CustomStepper(order:controller.orderConfirmed.value!),
         /* ...controller.timeLineList
              .sublist(2)
              .map((e) => Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w,),
                child: CustomStepper.buildRow(e.keys.first, e.values.first),
              ))
              .toList(),*/
        ],
      ),
    );
  }
  Widget _buildRowOfButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...Constants.checkAndCancelButtons.entries.map((e) => Padding(
          padding: EdgeInsetsDirectional.only(end: e.key==Constants.cancel?15.w:0),
          child: CustomButton(
            text: e.key,
            width: 136.w,
            onPressed: e.value,
            color: e.key==Constants.cancel? ColorHelper.grey_78AEAEAE :ColorHelper.blue,
          ),
        )).toList(),
      ],
    );
  }
}
