import 'package:flutter/material.dart';
import 'package:orderd_app/helpers/color_helper.dart';

import '../../../../app/app_text_styles.dart';
import '../../../../model/question.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '* ${question.question!}',
          style: AppTextStyle.buildPoppinsSemiBoldTextStyle(
            color: ColorHelper.blue_0B2C3F,
            size: 13,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          question.answer!,
          style: AppTextStyle.buildPoppinsSemiBoldTextStyle(
            color: Colors.black,
            size: 13,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}