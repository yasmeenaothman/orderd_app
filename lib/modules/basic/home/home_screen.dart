import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/widgets/custom_button.dart';
import 'package:orderd_app/widgets/custom_white_container.dart';

import '../../../helpers/assets_helper.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 27.w, end: 25.w, top: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(()=>Text('Hi ${controller.userName.value}',style: AppTextStyle.buildPoppinsMediumTextStyle(size: 20),),),
          SizedBox(
            height: 10.h,
          ),
          Text(Constants.desc,style: AppTextStyle.buildPoppinsMediumTextStyle(),),
          SizedBox(
            height: 30.h,
          ),
          Text(Constants.lastOrder,style: AppTextStyle.buildPoppinsSemiBoldTextStyle(),),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomWhiteContainer(
                  height: 170.h,
                  padding: const EdgeInsetsDirectional.all(20),
                  child: _buildContainerChild(context),
                ),
                SizedBox(
                  height: 20.h,
                ),
                StaticMethods.imageAsset(AssetsHelper.imgHome),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildContainerChild(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Constants.noOrder,
          style: AppTextStyle.buildPoppinsSemiBoldTextStyle(
            color: Colors.black,
            size: 16,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(Constants.makeOrder,style: AppTextStyle.buildPoppinsMediumTextStyle(),),
        const Expanded(child: SizedBox()),
        CustomButton(
          text: Constants.makeOrderBtn,
          width: 165,
          onPressed: () {
            Get.toNamed(Constants.completeScreen);
          },
          haveIcon: true,
        ),
      ],
    );
  }
}
