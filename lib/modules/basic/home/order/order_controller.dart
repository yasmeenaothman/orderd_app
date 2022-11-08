import 'package:get/get.dart';
import 'package:orderd_app/utils/constants.dart';

import '../../../../model/order.dart';
import '../../../../utils/static_methods.dart';

class OrderController extends GetxController{

  //RxString product = 'Fruits And Vegetables'.obs;
  Rx<Order?> orderConfirmed = Order(
    productName: 'Fruits And Vegetables',
    fromAddress: 'Metro Market/Alremal/ Gaza',
    toAddress: 'Metro Market/Alremal/ Gaza',
    date: '10Th August , 2022',
    time: '12:30Pm',
    status: OrderStatus.Ongoing
  ).obs;
  //late List<Map<String,String>> timeLineList;
  updateProduct(Order order){
    orderConfirmed.value = order;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    /*timeLineList = [
      {Constants.from : orderConfirmed.value!.fromAddress},
      {Constants.to : orderConfirmed.value!.toAddress},
      {Constants.date : orderConfirmed.value!.date},
      {Constants.time : orderConfirmed.value!.time},
    ];*/
    super.onInit();
  }
}