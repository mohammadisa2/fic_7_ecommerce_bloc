import 'dart:convert';

class DeleteFavoriteProductResponseModel {
  final String message;

  DeleteFavoriteProductResponseModel({
    required this.message,
  });

  factory DeleteFavoriteProductResponseModel.fromJson(String str) =>
      DeleteFavoriteProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DeleteFavoriteProductResponseModel.fromMap(
          Map<String, dynamic> json) =>
      DeleteFavoriteProductResponseModel(
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message,
      };
}
