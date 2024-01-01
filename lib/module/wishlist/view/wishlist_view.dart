import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/add_cart/add_cart_bloc.dart';
import '../../../bloc/cart/cart_bloc.dart';
import '../../../bloc/my_favorite_product/my_favorite_product_bloc.dart';
import '../../../data/models/request/add_cart_request_model.dart';
import '../controller/wishlist_controller.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({Key? key}) : super(key: key);

  Widget build(context, WishlistController controller) {
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
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    "My Wishlist",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
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
                        count: (data) {
                          return CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Colors.black38,
                            child: Badge(
                              backgroundColor: Colors.black,
                              offset: const Offset(-5, 5),
                              label: Text(
                                "${data.cartCount}",
                              ),
                              child: IconButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CartProductView(
                                      originPage: "wishlist-view",
                                    ),
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 24.0,
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
              const SizedBox(
                height: 20.0,
              ),
              BlocListener<AddCartBloc, AddCartState>(
                listener: (context, state) {
                  state.maybeWhen(
                    loaded: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              "Product has been successfully added to cart"),
                        ),
                      );
                    },
                    error: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(data),
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                child:
                    BlocBuilder<MyFavoriteProductBloc, MyFavoriteProductState>(
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
                            itemCount: response.data!.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              var item = response.data![index];
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
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "${item.imageProduct}",
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
                                            "${item.name}",
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
                                            "${item.category!.name}",
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          const Text(
                                            "Quantity: 1",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Rp. ${item.price}",
                                                style: const TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(12.0),
                                                  ),
                                                  color: Colors.black,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    final AddCartRequestModel
                                                        requestModel =
                                                        AddCartRequestModel(
                                                            productId: item
                                                                .productId!);

                                                    context
                                                        .read<AddCartBloc>()
                                                        .add(AddCartEvent.add(
                                                            requestModel));

                                                    context
                                                        .read<CartBloc>()
                                                        .add(const CartEvent
                                                            .countMyCart());
                                                  },
                                                  child: const Center(
                                                    child: Text(
                                                      "Add to cart",
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<WishlistView> createState() => WishlistController();
}
