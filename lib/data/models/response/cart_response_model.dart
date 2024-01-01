import 'dart:convert';

class CartResponseModel {
  final List<Cart> data;

  CartResponseModel({
    required this.data,
  });

  factory CartResponseModel.fromJson(String str) =>
      CartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartResponseModel.fromMap(Map<String, dynamic> json) =>
      CartResponseModel(
        data: List<Cart>.from(json["data"].map((x) => Cart.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Cart {
  final int id;
  final int userId;
  final Product product;

  Cart({
    required this.id,
    required this.userId,
    required this.product,
  });

  factory Cart.fromJson(String str) => Cart.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cart.fromMap(Map<String, dynamic> json) => Cart(
        id: json["id"],
        userId: json["user_id"],
        product: Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "product": product.toMap(),
      };
}

class Product {
  final int id;
  final String name;
  final String description;
  final int price;
  final String imageProduct;
  final Category category;
  final bool isWishlist;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageProduct,
    required this.category,
    required this.isWishlist,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imageProduct: json["image_product"],
        category: Category.fromMap(json["category"]),
        isWishlist: json["is_wishlist"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image_product": imageProduct,
        "category": category.toMap(),
        "is_wishlist": isWishlist,
      };
}

class Category {
  final int id;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Review {
  final int id;
  final String comment;
  final double rating;
  final User user;

  Review({
    required this.id,
    required this.comment,
    required this.rating,
    required this.user,
  });

  factory Review.fromJson(String str) => Review.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Review.fromMap(Map<String, dynamic> json) => Review(
        id: json["id"],
        comment: json["comment"],
        rating: json["rating"].toDouble(),
        user: User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "comment": comment,
        "rating": rating,
        "user": user.toMap(),
      };
}

class User {
  final int id;
  final String name;
  final String role;

  User({
    required this.id,
    required this.name,
    required this.role,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
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
