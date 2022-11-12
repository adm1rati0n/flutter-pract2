import '../../domain/entity/brand_entity.dart';

class Brand extends BrandEntity {
  Brand({
    super.id,
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory Brand.toFromMap(Map<String, dynamic> json) {
    return Brand(id: json['id'] as int, name: json['name']);
  }
}
