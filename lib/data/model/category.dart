import 'package:pract2/domain/entity/category_entity.dart';

class Category extends CategoryEntity {
  Category({
    super.id,
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory Category.toFromMap(Map<String, dynamic> json) {
    return Category(id: json['id'] as int, name: json['name']);
  }
}
