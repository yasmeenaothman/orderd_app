import 'package:get/get.dart';
import 'package:orderd_app/utils/constants.dart';

import 'edit_profile_screen.dart';

class ProfileScreenController extends GetxController{
  RxString userName = 'Yasmeen Othman'.obs;
  RxString userPhone = '0595897645'.obs;
  RxBool isEditProfile = false.obs;
  updateUserName(String name){
    userName.value = name;
  }
  updateIsEditProfile(bool isEditProfile){
    this.isEditProfile.value = isEditProfile;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}