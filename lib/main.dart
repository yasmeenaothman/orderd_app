import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/static_methods.dart';

import 'modules/splash/splash_screen.dart';
import 'utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  StaticMethods.changeStatusBar();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Constants.size,
      builder: (_,child)=> GetMaterialApp(
        theme: ThemeData.light().copyWith(primaryColor: ColorHelper.blue),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: Constants.routes,
      ),
    );
  }
}

