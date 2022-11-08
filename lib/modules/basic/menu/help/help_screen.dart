import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/modules/auth/widgets/custom_text_field.dart';
import 'package:orderd_app/modules/basic/menu/help/question_widget.dart';

import '../../../../app/app_text_styles.dart';
import '../../../../helpers/color_helper.dart';
import '../../../../model/question.dart';
import '../../../../utils/constants.dart';
import '../../../../widgets/custom_app_bar.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [],
        haveBackIcon: true,
        title: Constants.help,
      ),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 28.w, top: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Constants.howHelp, style: AppTextStyle.buildPoppinsMediumTextStyle(size: 15),),
              SizedBox(height: 10.h),
              CustomTextField(
                hintText: Constants.searchOnCenter,
                onChanged: (text){},
              ),
              SizedBox(height: 20.h),
              Text(
                Constants.frequentQuestions,
                style: AppTextStyle.buildPoppinsMediumTextStyle(size: 15),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ...Constants.questions.map((e) => QuestionWidget(question: Question.fromMap(e),)).toList(),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
