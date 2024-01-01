// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic_7_ecommerce/bloc/cart/cart_bloc.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:fic_7_ecommerce/data/models/request/cart_request_model.dart';

import '../controller/cart_product_controller.dart';

class CartProductView extends StatefulWidget {
  final String originPage;
  const CartProductView({
    Key? key,
    required this.originPage,
  }) : super(key: key);

  Widget build(context, CartProductController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: IconButton(
                      onPressed: () {
                        if (originPage == 'wishlist-view') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainNavigationView(
                                initialIndex: 2,
                              ),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainNavigationView(
                                initialIndex: 0,
                              ),
                            ),
                          );
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "My cart",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocListener<CartBloc, CartState>(
                listener: (context, state) {
                  state.maybeWhen(
                    deleted: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(data.message),
                        ),
                      );
                      context
                          .read<CartBloc>()
                          .add(const CartEvent.fecthMyCart());
                    },
                    errorDelete: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(data),
                        ),
                      );
                      context
                          .read<CartBloc>()
                          .add(const CartEvent.fecthMyCart());
                    },
                    orElse: () {},
                  );
                },
                child: BlocBuilder<CartBloc, CartState>(
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
                                      width: 118,
                                      height: 118,
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
                                            height: 4.0,
                                          ),
                                          Text(
                                            item.product.category.name,
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "Rp. ${item.product.price}",
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 24.0,
                                          ),
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: () {},
                                                child: CircleAvatar(
                                                  radius: 16.0,
                                                  backgroundColor:
                                                      Colors.grey[200],
                                                  child: const Icon(
                                                    Icons.remove,
                                                    color: Colors.grey,
                                                    size: 16.0,
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6.0,
                                                ),
                                                child: Text(
                                                  "1",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: CircleAvatar(
                                                  radius: 16.0,
                                                  backgroundColor:
                                                      Colors.grey[200],
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Colors.grey,
                                                    size: 16.0,
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                              InkWell(
                                                onTap: () {
                                                  final CartRequestModel
                                                      request =
                                                      CartRequestModel(
                                                    id: item.id,
                                                  );
                                                  context.read<CartBloc>().add(
                                                      CartEvent.deleteCart(
                                                          request));
                                                  context.read<CartBloc>().add(
                                                      const CartEvent
                                                          .countMyCart());
                                                },
                                                child: CircleAvatar(
                                                  radius: 16.0,
                                                  backgroundColor:
                                                      Colors.grey[200],
                                                  child: const Icon(
                                                    Icons.delete_outline,
                                                    color: Colors.grey,
                                                    size: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
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
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total (4 Item)",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    "Rp.500.000",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckoutProductView()),
                ),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Proceed to Checkout",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartProductView> createState() => CartProductController();
}
