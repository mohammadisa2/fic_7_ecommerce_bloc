import 'dart:convert';

class CountMyCartResponseModel {
  final int cartCount;

  CountMyCartResponseModel({
    required this.cartCount,
  });

  factory CountMyCartResponseModel.fromJson(String str) =>
      CountMyCartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CountMyCartResponseModel.fromMap(Map<String, dynamic> json) =>
      CountMyCartResponseModel(
        cartCount: json["cart_count"],
      );

  Map<String, dynamic> toMap() => {
        "cart_count": cartCount,
      };
}
