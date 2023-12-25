class MyOrderResponseModel {
  List<Order> data;

  MyOrderResponseModel({required this.data});

  factory MyOrderResponseModel.fromJson(Map<String, dynamic> json) {
    List<Order> orders = [];
    if (json['data'] != null) {
      orders =
          List<Order>.from(json['data'].map((order) => Order.fromJson(order)));
    }

    return MyOrderResponseModel(data: orders);
  }
}

class Order {
  int id;
  String totalPrice;
  String paymentStatus;
  List<OrderItem> orderItems;

  Order({
    required this.id,
    required this.totalPrice,
    required this.paymentStatus,
    required this.orderItems,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    List<OrderItem> orderItems = [];
    if (json['order_items'] != null) {
      orderItems = List<OrderItem>.from(
          json['order_items'].map((item) => OrderItem.fromJson(item)));
    }

    return Order(
      id: json['id'],
      totalPrice: json['total_price'],
      paymentStatus: json['payment_status'],
      orderItems: orderItems,
    );
  }
}

class OrderItem {
  int id;
  int quantity;
  Product product;

  OrderItem({required this.id, required this.quantity, required this.product});

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      quantity: json['quantity'],
      product: Product.fromJson(json['product']),
    );
  }
}

class Product {
  int id;
  String name;
  String description;
  int price;
  String imageUrl;
  int categoryId;
  int sellerId;
  String createdAt;
  String updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categoryId,
    required this.sellerId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['image_url'],
      categoryId: json['category_id'],
      sellerId: json['seller_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
