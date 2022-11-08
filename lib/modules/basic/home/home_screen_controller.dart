import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  RxString userName = 'Yasmeen'.obs;
  updateUserName(String name){
    userName.value = name;
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}