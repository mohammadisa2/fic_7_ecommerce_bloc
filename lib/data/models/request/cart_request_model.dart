import 'dart:convert';

class CartRequestModel {
  final int id;

  CartRequestModel({
    required this.id,
  });

  factory CartRequestModel.fromJson(String str) =>
      CartRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartRequestModel.fromMap(Map<String, dynamic> json) =>
      CartRequestModel(
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
      };
}
