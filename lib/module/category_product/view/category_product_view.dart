// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic_7_ecommerce/core.dart';

import '../../../bloc/products/products_bloc.dart';
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
              BlocBuilder<ProductsBloc, ProductsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
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
                                builder: (context) =>
                                    DetailProductView(product: item),
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
                                    child: const Stack(
                                      children: [
                                        Positioned(
                                          right: 10,
                                          top: 10,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.white,
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
                  );
                },
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
