// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MyFavoriteProductResponseModel {
  List<Favorite>? data;

  MyFavoriteProductResponseModel({
    this.data,
  });

  factory MyFavoriteProductResponseModel.fromJson(String str) =>
      MyFavoriteProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MyFavoriteProductResponseModel.fromMap(Map<String, dynamic> json) =>
      MyFavoriteProductResponseModel(
        data: json["data"] == null
            ? []
            : List<Favorite>.from(
                json["data"]!.map((x) => Favorite.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Favorite {
  int? id;
  String? name;
  String? description;
  int? price;
  int? productId;
  String? imageProduct;
  Category? category;
  Seller? seller;

  Favorite({
    this.id,
    this.name,
    this.description,
    this.price,
    this.productId,
    this.imageProduct,
    this.category,
    this.seller,
  });

  factory Favorite.fromJson(String str) => Favorite.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Favorite.fromMap(Map<String, dynamic> json) => Favorite(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        productId: json["product_id"],
        imageProduct: json["image_product"],
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
        seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image_product": imageProduct,
        "category": category?.toMap(),
        "seller": seller?.toMap(),
      };
}

class Category {
  int? id;
  String? name;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  Category({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Seller {
  int? id;
  String? name;
  String? role;

  Seller({
    this.id,
    this.name,
    this.role,
  });

  factory Seller.fromJson(String str) => Seller.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Seller.fromMap(Map<String, dynamic> json) => Seller(
        id: json["id"],
        name: json["name"],
        role: json["role"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "role": role,
      };
}
