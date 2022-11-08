import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orderd_app/widgets/custom_white_container.dart';
import 'package:timelines/timelines.dart';

import '../../../app/app_text_styles.dart';
import '../../../helpers/assets_helper.dart';
import '../../../helpers/color_helper.dart';
import '../../../utils/constants.dart';
import '../../../utils/static_methods.dart';
import '../../../widgets/custom_app_bar.dart';

class TrackingOrderScreen extends StatelessWidget {
  const TrackingOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [],
       haveBackIcon: true,
        title: Constants.trackingOrder,
      ),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 27.w, end: 27.w, top: 30.h),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              CustomWhiteContainer(
                padding: const EdgeInsetsDirectional.all(20),
                height: null,
                child: _buildTimeLineTracking(),
              ),
              StaticMethods.imageAsset(AssetsHelper.trackingImg),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildTimeLineTracking(){
    return Timeline.tileBuilder(
      shrinkWrap: true,
      theme: _buildTimeLineTheme(),
      /*TimelineTheme(
        data: TimelineThemeData(),
        child: ContainerIndicator(
          child: SvgPicture.asset('${AssetsHelper.imgBaseURL}${AssetsHelper.timelineIcon}',fit: BoxFit.none,),
        ),
      ).data.copyWith(
          connectorTheme: ConnectorThemeData(color: Colors.grey,space: 10.w,thickness: 1.5,indent: 1.5),
          indicatorTheme: IndicatorThemeData(color: ColorHelper.blue,size: 13.r),
          nodePosition: .025
      ),*/
      dragStartBehavior: DragStartBehavior.down,
      builder: TimelineTileBuilder.connectedFromStyle(
        indicatorPositionBuilder: (context, index)=>0.15,
        contentsBuilder: (context, index) => _buildContent(index),
        indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
        connectorStyleBuilder: (context, index) =>  ConnectorStyle.dashedLine,
        firstConnectorStyle: ConnectorStyle.transparent,
        lastConnectorStyle: ConnectorStyle.transparent,
        itemCount: 4,
      ),
    );
  }
  TimelineThemeData _buildTimeLineTheme(){
    return TimelineThemeData.vertical().copyWith(
        connectorTheme: ConnectorThemeData(color: Colors.grey,space: 10.w,thickness: 1.5,indent: 1.5),
        indicatorTheme: IndicatorThemeData(color: ColorHelper.blue,size: 12.5.r ),
        nodePosition: .025
    );
  }

  Widget _buildContent(int index){
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: index ==3?20.w:0),
          child: Text(
            'Your Order Was Delivered',
            style: AppTextStyle.buildPoppinsMediumTextStyle(),
          ),
        ),
        //SizedBox(height: 15.h,),
        Visibility(
          visible: index != 3,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 20.w, top: 15.h, bottom: 15.h,),
            child: const Divider(
              color: ColorHelper.gray_26544F4F,
            ),
          ),
        ),
      ],
    );
  }
}
