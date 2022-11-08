import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../../../app/app_text_styles.dart';
import '../../../utils/constants.dart';
import '../../../widgets/custom_button.dart';
import 'edit_profile_screen.dart';
import 'profile_screen_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  ProfileScreenController controller = Get.find<ProfileScreenController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 27.w,
            end: 27.w,
            top: 30.h,
          ),
          child: Obx(
            ()=>!controller.isEditProfile.value? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StaticMethods.buildCircleAvatar(),
                SizedBox(
                  height: 10.h,
                ),
                Obx(()=> Text(controller.userName.value,style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.blue,size: 20),)),
                SizedBox(
                  height: 10.h,
                ),
                Obx(()=> Text(controller.userPhone.value,style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.black_80,),)),
                SizedBox(
                  height: 50.h,
                ),
                CustomButton(
                  text: Constants.editProfileBtn,
                  onPressed: (){
                    //Navigator.of(context).pushNamed(Constants.editProfileScreen);
                    controller.updateIsEditProfile(true);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  text: Constants.trackOrder,
                  haveBorder: true,
                  color: Colors.white,
                  onPressed: (){
                    Get.toNamed(Constants.trackingOrderScreen);
                  },
                ),
              ],
            ):EditProfileScreen(),
          ),
      ),
    );
  }
}
