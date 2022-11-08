import 'package:get/get.dart';
import 'package:orderd_app/utils/constants.dart';

class PaymentScreenController extends GetxController{
  RxString paymentSelected = Constants.cash.obs;
  updatePaymentSelected(String type){
    paymentSelected.value = type;
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}