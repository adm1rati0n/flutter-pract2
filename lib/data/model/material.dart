import 'package:pract2/domain/entity/material_entity.dart';

class Material extends MaterialEntity {
  Material({
    super.id,
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory Material.toFromMap(Map<String, dynamic> json) {
    return Material(id: json['id'] as int, name: json['name']);
  }
}
