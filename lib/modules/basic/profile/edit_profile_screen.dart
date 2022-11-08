import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/widgets/text_field_with_label.dart';

import '../../../app/app_text_styles.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import '../../../widgets/custom_button.dart';
import 'profile_screen_controller.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  ProfileScreenController controller = Get.put(ProfileScreenController());
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StaticMethods.buildCircleAvatar(),
          SizedBox(
            height: 10.h,
          ),
          Text(Constants.changProfImg,style: AppTextStyle.buildPoppinsMediumTextStyle(color: ColorHelper.blue),),
          SizedBox(
            height: 30.h,
          ),
          TextFieldWithLabel(
            labelText: Constants.name,
            onChanged: (s){},
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFieldWithLabel(
            labelText: Constants.phoneNumber,
            onChanged: (s){},
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            text: Constants.doneBtn,
            width: 136.w,
            onPressed: (){
              controller.updateIsEditProfile(false);
              //Navigator.of(context).pushReplacementNamed(Constants.profileScreen);
            },
          ),

        ],
      );
  }
}
