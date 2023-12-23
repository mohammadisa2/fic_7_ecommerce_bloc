import 'dart:convert';

class ReviewRequestModel {
  final String comment;
  final double rating;
  final int productId;

  ReviewRequestModel({
    required this.comment,
    required this.rating,
    required this.productId,
  });

  factory ReviewRequestModel.fromJson(String str) =>
      ReviewRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ReviewRequestModel.fromMap(Map<String, dynamic> json) =>
      ReviewRequestModel(
        comment: json["comment"],
        rating: json["rating"].toDouble(),
        productId: json["product_id"],
      );

  Map<String, dynamic> toMap() => {
        "comment": comment,
        "rating": rating,
        "product_id": productId,
      };
}
