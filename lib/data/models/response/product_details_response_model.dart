import 'dart:convert';

class ProductDetailsResponseModel {
  ProductDetail? data;

  ProductDetailsResponseModel({
    this.data,
  });

  factory ProductDetailsResponseModel.fromJson(String str) =>
      ProductDetailsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductDetailsResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductDetailsResponseModel(
        data: json["data"] == null ? null : ProductDetail.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
      };
}

class ProductDetail {
  int? id;
  String? name;
  String? description;
  int? price;
  String? imageProduct;
  Category? category;
  Seller? seller;
  List<Review>? reviews;

  ProductDetail({
    this.id,
    this.name,
    this.description,
    this.price,
    this.imageProduct,
    this.category,
    this.seller,
    this.reviews,
  });

  factory ProductDetail.fromJson(String str) =>
      ProductDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductDetail.fromMap(Map<String, dynamic> json) => ProductDetail(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imageProduct: json["image_product"],
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
        seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
        reviews: json["reviews"] == null
            ? null
            : List<Review>.from(
                json["reviews"].map((x) => Review.fromMap(x)),
              ),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image_product": imageProduct,
        "category": category?.toMap(),
        "seller": seller?.toMap(),
        "reviews": reviews == null
            ? null
            : List<dynamic>.from(reviews!.map((x) => x.toMap())),
      };
}

class Category {
  int? id;
  String? name;
  String? description;
  String? createdAt;
  String? updatedAt;

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
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
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

class Review {
  int? id;
  String? comment;
  double? rating;
  User? user;

  Review({
    this.id,
    this.comment,
    this.rating,
    this.user,
  });

  factory Review.fromJson(String str) => Review.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Review.fromMap(Map<String, dynamic> json) => Review(
        id: json["id"],
        comment: json["comment"],
        rating: json["rating"].toDouble(),
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "comment": comment,
        "rating": rating,
        "user": user?.toMap(),
      };
}

class User {
  int? id;
  String? name;
  String? role;

  User({
    this.id,
    this.name,
    this.role,
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
