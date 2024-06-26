// ignore_for_file: invalid_use_of_protected_member

import 'package:fic_7_ecommerce/bloc/my_orders/my_orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/order_detail_controller.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({Key? key}) : super(key: key);

  Widget build(context, OrderDetailController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 20),
                      backgroundColor: controller.showOngoing
                          ? Colors.black
                          : Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      controller.setState(() {
                        controller.showOngoing = true;
                      });
                    },
                    child: Text(
                      "Ongoing",
                      style: TextStyle(
                        color: controller.showOngoing
                            ? Colors.white
                            : Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 20),
                      shadowColor: Colors.black,
                      backgroundColor: controller.showOngoing
                          ? Colors.white70
                          : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      controller.setState(() {
                        controller.showOngoing = false;
                      });
                    },
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        color: controller.showOngoing
                            ? Colors.black
                            : Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocBuilder<MyOrdersBloc, MyOrdersState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    error: (message) => Text('Error: $message'),
                    loaded: (myOrderResponse) {
                      var displayedOrders = controller.showOngoing
                          ? controller.separateOrdersByPaymentStatus(
                              myOrderResponse, '1')
                          : controller.separateOrdersByPaymentStatus(
                              myOrderResponse, '2');
                      return Expanded(
                        child: ListView.builder(
                          itemCount: displayedOrders.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const ScrollPhysics(),
                          itemBuilder: (context, orderIndex) {
                            var order = displayedOrders[orderIndex];
                            return ListView.builder(
                              itemCount: order['order_items'].length,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (context, itemIndex) {
                                var item = order['order_items'][itemIndex];
                                var productName = item['product']['name'];
                                var sellerName = item['seller']['name'];
                                var imageUrl = item['product']['image_url'];
                                var categoryName =
                                    item['product']['category']['name'];
                                var quantity = item['quantity'];
                                var subPrice = item['sub_price'];
                                return Container(
                                  padding: const EdgeInsets.all(12.0),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Color(0x19000000),
                                    //     blurRadius: 24,
                                    //     offset: Offset(0, 11),
                                    //   ),
                                    // ],
                                    // borderRadius: BorderRadius.only(
                                    //   topLeft: Radius.circular(
                                    //     8.0,
                                    //   ),
                                    //   topRight: Radius.circular(
                                    //     8.0,
                                    //   ),
                                    //   bottomLeft: Radius.circular(
                                    //     8.0,
                                    //   ),
                                    //   bottomRight: Radius.circular(
                                    //     8.0,
                                    //   ),
                                    // ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (sellerName != null)
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons
                                                      .store_mall_directory_outlined,
                                                  size: 24.0,
                                                ),
                                                const SizedBox(
                                                  width: 12.0,
                                                ),
                                                Text(
                                                  "$sellerName",
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Divider(
                                              color: Colors.black38,
                                            ),
                                            const SizedBox(
                                              height: 12.0,
                                            ),
                                          ],
                                        ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 90,
                                            height: 90,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "$imageUrl",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  8.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  productName,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4.0,
                                                ),
                                                Text(
                                                  "Category: $categoryName",
                                                  style: const TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4.0,
                                                ),
                                                Text(
                                                  "Quantity: $quantity",
                                                  style: const TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4.0,
                                                ),
                                                Text(
                                                  "Price: $subPrice",
                                                  style: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OrderDetailView> createState() => OrderDetailController();
}
