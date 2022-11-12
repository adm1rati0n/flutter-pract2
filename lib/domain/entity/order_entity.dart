import 'package:pract2/domain/entity/customer_entity.dart';
import 'package:pract2/domain/entity/order_status_entity.dart';
import 'package:pract2/domain/entity/product_entity.dart';

class OrderEntity{
  late int id;
  final int amount;
  final int product;
  final int orderStatus;
  final int customer;

  OrderEntity({
    this.id = 0,
    required this.amount,
    required this.product,
    required this.orderStatus,
    required this.customer
  });
}