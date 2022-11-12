import 'package:pract2/domain/entity/product_entity.dart';

class Product extends ProductEntity {
  Product(
      {super.id,
      required super.name,
      required super.price,
      required super.material,
      required super.brand,
      required super.category});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'id_material': material,
      'id_brand': brand,
      'id_category': category
    };
  }

  factory Product.toFromMap(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'],
        price: json['price'],
        material: json['id_material'],
        brand: json['id_brand'],
        category: json['id_category']);
  }
}
