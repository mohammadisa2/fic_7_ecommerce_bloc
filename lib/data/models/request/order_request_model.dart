import 'dart:convert';

class OrderRequestModel {
  final List<Item> items;
  final int totalPrice;
  final String deliveryAddress;

  OrderRequestModel({
    required this.items,
    required this.totalPrice,
    required this.deliveryAddress,
  });

  factory OrderRequestModel.fromJson(String str) =>
      OrderRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderRequestModel.fromMap(Map<String, dynamic> json) =>
      OrderRequestModel(
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        totalPrice: json["total_price"],
        deliveryAddress: json["delivery_address"],
      );

  Map<String, dynamic> toMap() => {
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "total_price": totalPrice,
        "delivery_address": deliveryAddress,
      };
}

class Item {
  final int id;
  final int quantity;
  final int sellerId;
  final int subPrice;

  Item({
    required this.id,
    required this.quantity,
    required this.sellerId,
    required this.subPrice,
  });

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        quantity: json["quantity"],
        sellerId: json["seller_id"],
        subPrice: json["sub_price"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "quantity": quantity,
        "seller_id": sellerId,
        "sub_price": subPrice,
      };
}
