import 'dart:convert';

class MustReviewResponseModel {
  final bool isHasReview;

  MustReviewResponseModel({
    required this.isHasReview,
  });

  factory MustReviewResponseModel.fromJson(String str) =>
      MustReviewResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MustReviewResponseModel.fromMap(Map<String, dynamic> json) =>
      MustReviewResponseModel(
        isHasReview: json["is_has_review"],
      );

  Map<String, dynamic> toMap() => {
        "is_has_review": isHasReview,
      };
}
