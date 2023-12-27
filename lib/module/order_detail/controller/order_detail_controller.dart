import 'package:fic_7_ecommerce/bloc/my_orders/my_orders_bloc.dart';
import 'package:fic_7_ecommerce/data/models/response/my_order_response_model.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view/order_detail_view.dart';

class OrderDetailController extends State<OrderDetailView> {
  static late OrderDetailController instance;
  late OrderDetailView view;

  @override
  void initState() {
    instance = this;
    // context.read<MyOrdersBloc>().add(const MyOrdersEvent.fetchOrders());
    super.initState();
    BlocProvider.of<MyOrdersBloc>(context)
        .add(const MyOrdersEvent.fetchOrders());
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // List<Map<String, dynamic>> separateOrdersByPaymentStatus(
  //     MyOrderResponseModel myOrderResponse) {
  //   List<Map<String, dynamic>> paymentStatus1Orders = [];

  //   for (var order in myOrderResponse.data) {
  //     var orderMap = {
  //       'id': order.id,
  //       'total_price': order.totalPrice,
  //       'payment_status': order.paymentStatus,
  //       'order_items': order.orderItems
  //           .map((item) => {
  //                 'id': item.id,
  //                 'quantity': item.quantity,
  //                 'sub_price': item.subPrice,
  //                 'product': {
  //                   'id': item.product.id,
  //                   'name': item.product.name,
  //                   'description': item.product.description,
  //                   'price': item.product.price,
  //                   'image_url': item.product.imageUrl,
  //                   'category_id': item.product.categoryId,
  //                   'seller_id': item.product.sellerId,
  //                   'created_at': item.product.createdAt,
  //                   'updated_at': item.product.updatedAt,
  //                 }
  //               })
  //           .toList(),
  //     };

  //     if (orderMap['payment_status'] == '1') {
  //       paymentStatus1Orders.add(orderMap);
  //     }
  //   }

  //   return paymentStatus1Orders; // Return the desired result
  // }

  // List<Map<String, dynamic>> separateOrdersByPaymentStatus2(
  //     MyOrderResponseModel myOrderResponse) {
  //   List<Map<String, dynamic>> paymentStatus2Orders = [];

  //   for (var order in myOrderResponse.data) {
  //     var orderMap = {
  //       'id': order.id,
  //       'total_price': order.totalPrice,
  //       'payment_status': order.paymentStatus,
  //       'order_items': order.orderItems
  //           .map((item) => {
  //                 'id': item.id,
  //                 'quantity': item.quantity,
  //                 'sub_price': item.subPrice,
  //                 'product': {
  //                   'id': item.product.id,
  //                   'name': item.product.name,
  //                   'description': item.product.description,
  //                   'price': item.product.price,
  //                   'image_url': item.product.imageUrl,
  //                   'category_id': item.product.categoryId,
  //                   'seller_id': item.product.sellerId,
  //                   'created_at': item.product.createdAt,
  //                   'updated_at': item.product.updatedAt,
  //                 }
  //               })
  //           .toList(),
  //     };

  //     if (orderMap['payment_status'] == '2') {
  //       paymentStatus2Orders.add(orderMap);
  //     }
  //   }

  //   return paymentStatus2Orders; // Return the desired result
  // }
  List<Map<String, dynamic>> separateOrdersByPaymentStatus(
    MyOrderResponseModel myOrderResponse,
    String targetPaymentStatus,
  ) {
    List<Map<String, dynamic>> filteredOrders = [];

    for (var order in myOrderResponse.data) {
      if (order.paymentStatus == targetPaymentStatus) {
        filteredOrders.add({
          'id': order.id,
          'total_price': order.totalPrice,
          'payment_status': order.paymentStatus,
          'order_items': order.orderItems
              .map((item) => {
                    'id': item.id,
                    'quantity': item.quantity,
                    'sub_price': item.subPrice,
                    'product': {
                      'id': item.product.id,
                      'name': item.product.name,
                      'description': item.product.description,
                      'price': item.product.price,
                      'image_url': item.product.imageUrl,
                      'category': {
                        'id': item.product.category.id,
                        'name': item.product.category.name,
                        'description': item.product.category.description,
                      },
                    },
                    "seller": {
                      "id": item.seller.id,
                      "name": item.seller.name,
                    },
                  })
              .toList(),
        });
      }
    }

    return filteredOrders;
  }

  bool hasDuplicateSeller(List<dynamic> orderItems, int currentItemIndex) {
    var currentSellerName = orderItems[currentItemIndex]['seller']['name'];

    for (int i = 0; i < currentItemIndex; i++) {
      var previousSellerName = orderItems[i]['seller']['name'];

      // Jika ada duplikat, kembalikan true
      if (currentSellerName == previousSellerName) {
        return true;
      }
    }

    // Tidak ada duplikat ditemukan
    return false;
  }

  bool showOngoing = true;
}
