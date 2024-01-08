// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic_7_ecommerce/core.dart';

import '../../../bloc/cart/cart_bloc.dart';
import '../../../bloc/order/order_bloc.dart';
import '../../../core/radio.dart';
import '../../../core/validator.dart';
import '../../../data/models/request/order_request_model.dart';
import '../controller/checkout_product_controller.dart';
import '../widget/payment_page.dart';

class CheckoutProductView extends StatefulWidget {
  final int subPrice;
  const CheckoutProductView({
    Key? key,
    required this.subPrice,
  }) : super(key: key);

  Widget build(context, CheckoutProductController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Text(
                    "Delivery Address",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              QRadioField(
                label: "Choose your Address",
                hint: "Address",
                validator: Validator.atLeastOneitem,
                items: const [
                  {
                    "value": 1,
                    "label": "First Address",
                    "phone": "0812 **** ****",
                    "address": "Bogor, Indonesia",
                  },
                  {
                    "value": 2,
                    "label": "Second Address",
                    "phone": "0851 **** ****",
                    "address": "Jakarta, Indonesia",
                  }
                ],
                onChanged: (value, label, phone, address) {},
              ),
              const Text(
                "Product Items",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (response) {
                      controller.items = response.data
                          .map(
                            (e) => Item(
                              id: e.product.id,
                              quantity: 1,
                              sellerId: e.product.seller.id,
                              subPrice: e.product.price,
                            ),
                          )
                          .toList();
                      return Expanded(
                        child: ListView.builder(
                          itemCount: response.data.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const ScrollPhysics(),
                          itemBuilder: (context, index) {
                            var item = response.data[index];
                            return Container(
                              padding: const EdgeInsets.all(12.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 11),
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 96,
                                    height: 96,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item.product.imageProduct,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
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
                                          item.product.name,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          item.product.category.name,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "Rp. ${item.product.price}",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        const Text(
                                          "Quantity: 1",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          color: Colors.black54,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fee Delivery",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Rp. 100.000",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Rp. ${controller.subPrice}",
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  loaded: (data) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PaymentPage(
                        url: data.data.paymentUrl,
                        orderId: data.data.number,
                      );
                    }));
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  error: (message) {
                    return Text(message);
                  },
                  orElse: () {
                    return Container(
                      height: 50,
                      width: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(24.0),
                        ),
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          final requestModel = OrderRequestModel(
                            items: controller.items,
                            totalPrice: controller.subPrice,
                            deliveryAddress: "Test",
                          );
                          context
                              .read<OrderBloc>()
                              .add(OrderEvent.order(requestModel));
                        },
                        child: const Center(
                          child: Text(
                            "Place Order",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CheckoutProductView> createState() => CheckoutProductController();
}
