import 'dart:convert';

class AddFavoriteProductRequestModel {
  final int productId;

  AddFavoriteProductRequestModel({
    required this.productId,
  });

  factory AddFavoriteProductRequestModel.fromJson(String str) =>
      AddFavoriteProductRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddFavoriteProductRequestModel.fromMap(Map<String, dynamic> json) =>
      AddFavoriteProductRequestModel(
        productId: json["product_id"],
      );

  Map<String, dynamic> toMap() => {
        "product_id": productId,
      };
}
