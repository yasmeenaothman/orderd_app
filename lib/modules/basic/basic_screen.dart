import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderd_app/helpers/assets_helper.dart';
import 'package:orderd_app/helpers/color_helper.dart';
import 'package:orderd_app/utils/constants.dart';
import 'package:orderd_app/utils/static_methods.dart';
import 'package:orderd_app/widgets/custom_bottom_nav_bar.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer.dart';
import 'profile/profile_screen_controller.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({Key? key}) : super(key: key);
  @override
  _BasicScreenState createState() => _BasicScreenState();
}
class _BasicScreenState extends State<BasicScreen> {
  ProfileScreenController controller = Get.put(ProfileScreenController());
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        actions: [
          IconButton(
            icon: StaticMethods.svgPicture(AssetsHelper.notification),
            onPressed: () {
              Get.toNamed(Constants.notificationsScreen);
            },
          ),
        ],
        title: Constants.tabs[selectedIndex][Constants.nameKey],
      ),
      drawer: const CustomDrawer(),
      backgroundColor: ColorHelper.white_FBFBFB,
      body: SafeArea(
          child: Constants.tabs[selectedIndex][Constants.widgetKey],
        ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedIndex: selectedIndex,
        isDelivery: selectedIndex == 1? true : false,
        onTabChange: (index){
          setState(() {
            controller.updateIsEditProfile(false);
            selectedIndex = index;
          });
        },
      ),
      //bottomNavigationBar: ,
    );
  }
}
