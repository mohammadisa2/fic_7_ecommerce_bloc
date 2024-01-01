import 'dart:convert';

class DeleteCartResponseModel {
  final String message;

  DeleteCartResponseModel({
    required this.message,
  });

  factory DeleteCartResponseModel.fromJson(String str) =>
      DeleteCartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DeleteCartResponseModel.fromMap(Map<String, dynamic> json) =>
      DeleteCartResponseModel(
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message,
      };
}
