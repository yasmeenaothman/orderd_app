import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'custom_text_field.dart';

import '../../../app/app_text_styles.dart';
import '../../../helpers/assets_helper.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import '../../../widgets/custom_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key, this.isSignUp = false}) : super(key: key);
  final bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorHelper.white_FBFBFB,
          leading: !isSignUp? null : _buildIconButton(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                SizedBox(
                  height: 113.h,
                ),
                Text(
                  isSignUp ? Constants.signUp : Constants.signIn,
                  style: AppTextStyle.buildPoppinsBoldTextStyle(),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TabBar(
                  indicatorWeight: 1,
                  indicatorColor: Theme.of(context).primaryColor,
                  tabs: [
                    Tab(
                      child: Text(
                        Constants.phoneNumber,
                        style: AppTextStyle.buildPoppinsMediumTextStyle(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        Constants.email,
                        style: AppTextStyle.buildPoppinsMediumTextStyle(),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildTabContent(),
                      _buildTabContent(isEmail: true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent({bool isEmail = false}) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        Visibility(
          visible: isSignUp,
          child: Padding(
            padding: EdgeInsetsDirectional.only(bottom: 10.h),
            child: CustomTextField(
              hintText: Constants.enterName,
              onChanged: (s) {},
            ),
          ),
        ),
        CustomTextField(
          hintText: isEmail? Constants.enterEmail :Constants.enterPhoneNum,
          onChanged: (s) {},
        ),
        Visibility(
          visible: isEmail,
          child: SizedBox(
            height: 10.h,
          ),
        ),
        Visibility(
          visible: isEmail,
          child: CustomTextField(
            hintText: Constants.password,
            onChanged: (s) {},
            suffixIcon: StaticMethods.svgPicture('eye_icon.svg'),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Visibility(visible: isEmail, child: _buildRow()),
        CustomButton(
          text: (isSignUp?Constants.signUp:Constants.signIn).toUpperCase(),
          width: 269.w,
          onPressed: () {
            //TODO: in sign up you will go to verification screen
            Get.offAndToNamed(isSignUp?Constants.basicScreen:Constants.basicScreen);
          },
        ),
        SizedBox(
          height: 30.h,
        ),
        Visibility(
          visible: !isSignUp,
          child: TextButton(
            onPressed: (){
              Get.toNamed(Constants.signUpScreen);
            },
            child: Text(
              Constants.createAccount,
              style: AppTextStyle.buildOpenSansSemiBoldTextStyle(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRow() {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 50.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: Constants.imagesPath
            .map((e) => Padding(
                  padding: EdgeInsetsDirectional.only(start: 33.h),
                  child: StaticMethods.svgPicture(e),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildIconButton(){
    return  IconButton(
      icon: StaticMethods.svgPicture(AssetsHelper.leftArrowIcon),
      onPressed: () {
        Get.offAndToNamed(Constants.signInScreen);
      },
    );
  }
}
