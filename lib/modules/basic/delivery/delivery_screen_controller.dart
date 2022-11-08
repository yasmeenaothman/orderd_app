import 'package:get/get.dart';

import '../../../model/order.dart';
import '../../../utils/static_methods.dart';

class DeliveryScreenController extends GetxController{
  RxList allOrders = [Order(
      productName: 'Fruits And Vegetables',
      fromAddress: 'Metro Market/Alremal/ Gaza',
      toAddress: 'Metro Market/Alremal/ Gaza',
      date: '10Th August , 2022',
      time: '12:30Pm',
      status: OrderStatus.Ongoing
  )].obs;
  addOrder(Order order){
    allOrders.add(order);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}

