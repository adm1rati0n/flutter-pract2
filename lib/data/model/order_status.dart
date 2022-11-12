import 'package:pract2/domain/entity/order_status_entity.dart';

class OrderStatus extends OrderStatusEntity {
  OrderStatus({
    super.id,
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory OrderStatus.toFromMap(Map<String, dynamic> json) {
    return OrderStatus(id: json['id'] as int, name: json['name']);
  }
}
