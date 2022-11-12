import 'package:pract2/domain/entity/order_entity.dart';

class Order extends OrderEntity {
  Order(
  {super.id,
  required super.amount,
  required super.product,
  required super.orderStatus,
  required super.customer});

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'id_product': product,
      'id_order_status': orderStatus,
      'id_customer': customer
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
        id: json['id'] as int,
        amount: json['amount'],
        product: json['id_product'],
        orderStatus: json['id_order_status'],
        customer: json['id_customer']);
  }
}