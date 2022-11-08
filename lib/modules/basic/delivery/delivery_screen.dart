import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/constants.dart';
import 'package:orderd_app/utils/static_methods.dart';
import 'package:orderd_app/widgets/custom_stepper.dart';

import '../../../model/order.dart';
import '../../../widgets/custom_white_container.dart';
import 'delivery_screen_controller.dart';

class DeliveryScreen extends StatelessWidget {
  DeliveryScreen({Key? key}) : super(key: key);
  DeliveryScreenController controller = Get.put(DeliveryScreenController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 27.w,end: 27.w, top: 30.h ),
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: ColorHelper.blue,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: ColorHelper.black_80,
              labelStyle: AppTextStyle.buildPoppinsMediumTextStyle(),
              tabs: Constants.orderStatus.map((e) => Text(e)).toList(),
            ),
            SizedBox(height: 30.h,),
            Expanded(
              child: TabBarView(
                children: [
                  Obx(
                  () => controller.allOrders.isEmpty
                      ? StaticMethods.emptyWidget(
                          Constants.noOrder,
                          AssetsHelper.noOrderImg,
                        )
                      : ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              _buildOrderCard(controller.allOrders[index]),
                          itemCount: controller.allOrders.length,
                        ),
                ),
                Text('yes'),
                  Text('yes'),
                  Text('yes'),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildOrderCard(Order order){
    return CustomWhiteContainer(
      padding: const EdgeInsetsDirectional.all(20),
      height: null,
      hasBorder: true,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  order.productName,
                  style: AppTextStyle.buildPoppinsMediumTextStyle(color:ColorHelper.blue,),
                ),
                Text(
                  'Is ${order.status.toString().split('.').last}',
                  style: AppTextStyle.buildPoppinsMediumTextStyle(
                    color:order.status == OrderStatus.Delivered? ColorHelper.green: ColorHelper.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          CustomStepper(order: order,),
          SizedBox(height: 20.h,),
          //CustomStepper(order: order,withContent: false),
        ],
      ),
    );
  }
}
