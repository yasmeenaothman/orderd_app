import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/utils/static_methods.dart';

import '../../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.offAndToNamed(Constants.basicScreen));//signInScreen
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StaticMethods.svgPicture(AssetsHelper.splashImg),
      ),
    );
  }
}
