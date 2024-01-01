import 'dart:convert';

class AddCartResponseModel {
  final int productId;
  final int userId;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  AddCartResponseModel({
    required this.productId,
    required this.userId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory AddCartResponseModel.fromJson(String str) =>
      AddCartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddCartResponseModel.fromMap(Map<String, dynamic> json) =>
      AddCartResponseModel(
        productId: json["product_id"],
        userId: json["user_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "product_id": productId,
        "user_id": userId,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
