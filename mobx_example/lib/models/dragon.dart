import 'dart:convert';

class DragonModel {
  final String id;
  final String name;
  final String histories;
  final String type;
  final DateTime createdAt;

  DragonModel({
    required this.id,
    required this.name,
    required this.histories,
    required this.type,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'histories': histories,
      'type': type,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory DragonModel.fromMap(Map<String, dynamic> map) {
    return DragonModel(
      id: map['id'] as String,
      name: map['name'] as String,
      histories: map['histories'] as String,
      type: map['type'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory DragonModel.fromJson(String source) => DragonModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
