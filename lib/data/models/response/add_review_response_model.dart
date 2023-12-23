import 'dart:convert';

class AddReviewResponseModel {
  String? comment;
  double? rating;
  int? productId;
  int? userId;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  AddReviewResponseModel({
    this.comment,
    this.rating,
    this.productId,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory AddReviewResponseModel.fromJson(String str) =>
      AddReviewResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddReviewResponseModel.fromMap(Map<String, dynamic> json) =>
      AddReviewResponseModel(
        comment: json["comment"],
        rating: json["rating"]?.toDouble(),
        productId: json["product_id"],
        userId: json["user_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "comment": comment,
        "rating": rating,
        "product_id": productId,
        "user_id": userId,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
      };
}
