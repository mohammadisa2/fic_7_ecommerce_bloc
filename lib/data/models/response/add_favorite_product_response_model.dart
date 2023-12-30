import 'dart:convert';

class AddFavoriteProductResponseModel {
  String? name;
  String? description;
  int? price;
  String? imageUrl;
  int? categoryId;
  int? userId;
  int? sellerId;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  AddFavoriteProductResponseModel({
    this.name,
    this.description,
    this.price,
    this.imageUrl,
    this.categoryId,
    this.userId,
    this.sellerId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory AddFavoriteProductResponseModel.fromJson(String str) =>
      AddFavoriteProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddFavoriteProductResponseModel.fromMap(Map<String, dynamic> json) =>
      AddFavoriteProductResponseModel(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imageUrl: json["image_url"],
        categoryId: json["category_id"],
        userId: json["user_id"],
        sellerId: json["seller_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "image_url": imageUrl,
        "category_id": categoryId,
        "user_id": userId,
        "seller_id": sellerId,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
      };
}
