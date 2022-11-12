import 'package:pract2/domain/entity/customer_entity.dart';

class Customer extends CustomerEntity {
  Customer(
      {super.id,
      required super.name,
      required super.surname,
      super.middlename,
      required super.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'surname': surname,
      'name': name,
      'middlename': middlename,
      'phoneNumber': phoneNumber
    };
  }

  factory Customer.toFromMap(Map<String, dynamic> json) {
    return Customer(
        id: json['id'] as int,
        name: json['name'],
        surname: json['surname'],
        middlename: json['middlename'],
        phoneNumber: json['phoneNumber']);
  }
}
