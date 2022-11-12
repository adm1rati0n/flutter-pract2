import 'dart:ffi';

class ProductEntity{
  late int id;
  final String name;
  final Double price;
  final int category;
  final int brand;
  final int material;

  ProductEntity({
    this.id = 0,
    required this.name,
    required this.price,
    required this.category,
    required this.brand,
    required this.material
  });
}