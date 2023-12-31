// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic_7_ecommerce/core.dart';

import '../../../bloc/add_favorite_product/add_favorite_product_bloc.dart';
import '../../../bloc/add_review/add_review_bloc.dart';
import '../../../bloc/must_review/must_review_bloc.dart';
import '../../../bloc/my_favorite_product/my_favorite_product_bloc.dart';
import '../../../bloc/product_details/product_details_bloc.dart';
import '../../../bloc/products/products_bloc.dart';
import '../../../data/models/request/add_favorite_product_request_model.dart';
import '../controller/category_product_controller.dart';

class CategoryProductView extends StatefulWidget {
  final int id;
  final String name;
  const CategoryProductView({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  Widget build(BuildContext context, CategoryProductController controller) {
    context.read<ProductsBloc>().add(ProductsEvent.getByCategory(id));
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
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
                  const Spacer(),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocListener<AddFavoriteProductBloc, AddFavoriteProductState>(
                listener: (context, state) {
                  state.maybeWhen(
                    deleted: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(data.message),
                        ),
                      );
                      context
                          .read<ProductsBloc>()
                          .add(ProductsEvent.refreshByCategory(id));
                      context
                          .read<MyFavoriteProductBloc>()
                          .add(const MyFavoriteProductEvent.refreshMyFavProd());
                    },
                    loaded: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Favorite product added successfully!',
                          ),
                        ),
                      );
                      context
                          .read<MyFavoriteProductBloc>()
                          .add(const MyFavoriteProductEvent.refreshMyFavProd());
                      context
                          .read<ProductsBloc>()
                          .add(ProductsEvent.refreshByCategory(id));
                    },
                    errorDelete: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    error: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Failed to add Favorite product. Please try again.'),
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                child: BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (model) {
                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.0 * 0.8,
                            crossAxisCount: 2,
                            mainAxisSpacing: 25,
                            crossAxisSpacing: 25,
                          ),
                          itemCount: model.data!.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = model.data![index];
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MultiBlocProvider(
                                    providers: [
                                      BlocProvider<ProductDetailsBloc>(
                                        create: (context) =>
                                            ProductDetailsBloc(),
                                      ),
                                      BlocProvider<AddReviewBloc>(
                                        create: (context) => AddReviewBloc(),
                                      ),
                                      BlocProvider<MustReviewBloc>(
                                        create: (context) => MustReviewBloc(),
                                      ),
                                    ],
                                    child: DetailProductView(
                                      productId: item.id!,
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 160.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "${item.imageProduct}",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            20.0,
                                          ),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 10,
                                            top: 10,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.black,
                                              child: IconButton(
                                                onPressed: () {
                                                  if (item.isWishlist!) {
                                                    AddFavoriteProductRequestModel
                                                        request =
                                                        AddFavoriteProductRequestModel(
                                                            productId:
                                                                item.id!);

                                                    context
                                                        .read<
                                                            AddFavoriteProductBloc>()
                                                        .add(
                                                          AddFavoriteProductEvent
                                                              .delete(request),
                                                        );
                                                  } else {
                                                    AddFavoriteProductRequestModel
                                                        request =
                                                        AddFavoriteProductRequestModel(
                                                      productId: item.id!,
                                                    );

                                                    context
                                                        .read<
                                                            AddFavoriteProductBloc>()
                                                        .add(
                                                          AddFavoriteProductEvent
                                                              .add(
                                                            request,
                                                          ),
                                                        );
                                                  }
                                                },
                                                icon: Icon(
                                                  Icons.favorite,
                                                  color: item.isWishlist!
                                                      ? Colors.red
                                                      : Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "${item.name}",
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "${item.category!.name}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Rp. ${item.price}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CategoryProductView> createState() => CategoryProductController();
}
