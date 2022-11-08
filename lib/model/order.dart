import '../utils/static_methods.dart';

class Order{

  Order({
    required this.productName,
    required this.fromAddress,
    required this.toAddress,
    required this.date,
    required this.time,
    required this.status,
    this.price,
  });

  int id = (DateTime.now().microsecond) +1  ;
  String productName;
  String fromAddress;
  String toAddress;
  String date;
  String time;
  OrderStatus status;
  double? price = 5;
}