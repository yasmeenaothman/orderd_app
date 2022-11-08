import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/widgets/custom_white_container.dart';

import '../../../app/app_text_styles.dart';
import '../../../helpers/assets_helper.dart';
import '../../../helpers/color_helper.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_drawer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          IconButton(
            icon: StaticMethods.svgPicture(AssetsHelper.notification),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        title: Constants.notifications,
      ),
      drawer: const CustomDrawer(),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:12.h,vertical: 20.h),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context,index)=>Padding(
            padding: EdgeInsetsDirectional.only(top: 10.h),
            child: CustomWhiteContainer(
              padding: const EdgeInsetsDirectional.all(20),
              height: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //TODO: here think about the status of order and color of the texts

                  Text('Order Delivered',style: AppTextStyle.buildPoppinsMediumTextStyle(),),
                  Text('29 m',style: AppTextStyle.buildPoppinsMediumTextStyle(size: 12),),
                ],
              ),
            ),
          ),
        ),
        ),
    );
  }
}
