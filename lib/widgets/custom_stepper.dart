
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orderd_app/app/app_text_styles.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:timelines/timelines.dart';

import '../model/order.dart';
import '../utils/constants.dart';
class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key, required this.order, this.withContent = true,this.isDelivery = true,}) : super(key: key);
  final Order order;
  final bool withContent;
  final bool isDelivery;
  @override
  Widget build(BuildContext context) {
     List<Map<String,String>> timeLineList = [
      {Constants.from : order.fromAddress},
      {Constants.to : order.toAddress},
      {Constants.date : order.date},
      {Constants.time : order.time},
    ];
    return Column(
      children: [
        _buildTimelineTileBuilder(timeLineList),
        ...timeLineList
            .sublist(2)
            .map((e) => Padding(
          padding: EdgeInsetsDirectional.only(start: 20.w,),
          child: buildRow(e.keys.first, e.values.first),
        )).toList(),
      ],
    );
  }
  Widget _buildTimelineTileBuilder(timeLineList){
    return Timeline.tileBuilder(
      shrinkWrap: true,
      theme: _buildTimeLineTheme(),
      dragStartBehavior: DragStartBehavior.down,
      scrollDirection: withContent?null:Axis.horizontal,
      builder: TimelineTileBuilder.connectedFromStyle(
        indicatorPositionBuilder: (context, index)=>0.24,
        contentsBuilder: (context, index) => withContent?_buildTimeLineContent(timeLineList[index]):null,
        indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
        connectorStyleBuilder: (context, index) =>  withContent?ConnectorStyle.dashedLine: ConnectorStyle.solidLine,
        firstConnectorStyle: ConnectorStyle.transparent,
        lastConnectorStyle: ConnectorStyle.transparent,
        itemCount: timeLineList.sublist(0,2).length,
      ),
    );
  }
  TimelineThemeData _buildTimeLineTheme(){
    return TimelineThemeData.vertical().copyWith(
      connectorTheme: ConnectorThemeData(color: Colors.grey,space: 10.w,thickness: 1.5,indent: 1.5),
      indicatorTheme: IndicatorThemeData(color: ColorHelper.blue,size: 10.r ),
      nodePosition: .025
    );
  }
  Widget _buildTimeLineContent(Map<String,String> e){
    return buildRow(e.keys.first, e.values.first);
  }
  Widget buildRow(String label, String result) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: isDelivery? 10.h : 20.h,start: 10.w,top: isDelivery?0:5.h,end: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: !isDelivery,
            child: SizedBox(
              width: 52.w,
              child: Visibility(
                visible: !isDelivery,
                child: Text(
                  label,
                  style: AppTextStyle.buildPoppinsMediumTextStyle(),
                ),
              ),
            ),
          ),
          Visibility(
            visible: !isDelivery,
            child: SizedBox(
              width: 55.w,
            ),
          ),
          Visibility(
            visible: !(isDelivery && label == Constants.time),
            child: Expanded(
              child: Text(
                result,
                style: AppTextStyle.buildPoppinsMediumTextStyle(size: 14),
              ),
            ),
          ),
          Visibility(
            visible: isDelivery && label == Constants.date,
            child: Text(
              order.time,
              style: AppTextStyle.buildPoppinsMediumTextStyle(size: 14),
            ),
          ),
        ],
      ),
    );
  }
}

