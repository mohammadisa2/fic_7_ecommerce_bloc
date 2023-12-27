// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyOrderResponseModel {
  List<Order> data;

  MyOrderResponseModel({required this.data});

  factory MyOrderResponseModel.fromJson(Map<String, dynamic> json) {
    List<Order> orders = [];
    if (json['data'] != null) {
      json['data'].forEach((orderJson) {
        orders.add(Order.fromJson(orderJson));
      });
    }
    return MyOrderResponseModel(data: orders);
  }
}

class Order {
  int id;
  int userId;
  String totalPrice;
  String paymentStatus;
  List<OrderItem> orderItems;

  Order({
    required this.id,
    required this.userId,
    required this.totalPrice,
    required this.paymentStatus,
    required this.orderItems,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    List<OrderItem> orderItems = [];
    if (json['order_items'] != null) {
      json['order_items'].forEach((itemJson) {
        orderItems.add(OrderItem.fromJson(itemJson));
      });
    }

    return Order(
      id: json['id'],
      userId: json['user_id'],
      totalPrice: json['total_price'],
      paymentStatus: json['payment_status'],
      orderItems: orderItems,
    );
  }
}

class OrderItem {
  int id;
  int quantity;
  String subPrice;
  Seller seller;
  Product product;

  OrderItem({
    required this.id,
    required this.quantity,
    required this.subPrice,
    required this.seller,
    required this.product,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      quantity: json['quantity'],
      subPrice: json['sub_price'],
      seller: Seller.fromJson(json['seller']),
      product: Product.fromJson(json['product']),
    );
  }
}

class Seller {
  int id;
  String name;
  String role;

  Seller({
    required this.id,
    required this.name,
    required this.role,
  });

  factory Seller.fromJson(Map<String, dynamic> json) {
    return Seller(
      id: json['id'],
      name: json['name'],
      role: json['role'],
    );
  }
}

class Product {
  int id;
  String name;
  String description;
  int price;
  String imageUrl;
  Category category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['image_url'],
      category: Category.fromJson(json['category']),
    );
  }
}

class Category {
  int id;
  String name;
  String description;

  Category({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
