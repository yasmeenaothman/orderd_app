
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:orderd_app/widgets/custom_white_container.dart';
import 'package:orderd_app/widgets/text_field_with_label.dart';

import '../../../../app/app_text_styles.dart';
import '../../../../helpers/assets_helper.dart';
import '../../../../helpers/color_helper.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/static_methods.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_drawer.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppbar(
        actions: [],
        haveBackIcon: true,
        title: Constants.addCard,
      ),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 27.w, end: 27.w, top: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Constants.cardInfo,style: AppTextStyle.buildPoppinsSemiBoldTextStyle(),),
              SizedBox(height: 20.h,),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    CustomWhiteContainer(
                      padding: const EdgeInsetsDirectional.all(20),
                      height: null,
                      child: _buildContainerChild(),
                    ),
                    SizedBox(height: 50.h,),
                    Align(
                      alignment: Alignment.center,
                      child: CustomButton(
                        text: Constants.doneBtn,
                        width: 136.w,
                        onPressed: (){
                          // Todo: here you will move to the website to ensure from card, so this is testing
                          Get.offAndToNamed(Constants.orderAssignedScreen);
                        },
                      ),
                    ),
                    SizedBox(height: 50.h,),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerChild(){
    return Column(
      children: [
        ...Constants.cardInfoLabels.map((e) => Padding(
          padding: EdgeInsetsDirectional.only(bottom: 20.h),
          child: TextFieldWithLabel(
            labelText: e[Constants.labelKey],
            onChanged: e[Constants.funKey],
          ),
        )).toList(),
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_app/widgets/button_widget.dart';
import 'package:order_app/widgets/normal_textfield_widget.dart';
import 'package:order_app/widgets/white_container_widget.dart';

import '../widgets/appbar_widget.dart';

class AddOrderScreen extends StatelessWidget {
  const AddOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Color(0xffFBFBFB),
        appBar: AppbarWidget(
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () {},
            )
          ],
          title: 'Add Card',
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Card Info'),
              SizedBox(
                height: 20,
              ),
              WhiteContainerWidget(
                  child: Column(children: [
                    NormalTextFieldWidget(
                        labelText: 'Card Holder Name:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'Card Number:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'Expiry Date:', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                    NormalTextFieldWidget(
                        labelText: 'CVV/CVC', onChanged: (text) {}),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                  height: null,
                  padding: EdgeInsets.all(20)),
              SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.center,
                  child:
                  ButtonWidget(text: 'Done', width: 136, onPressed: () {}))
            ],
          ),
        ));
  }
}*/
