import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/categories/categories_bloc.dart';
import '../../../bloc/products/products_bloc.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => DashboardController();

  Widget build(BuildContext context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ProductsBloc>().add(const ProductsEvent.refresh());
            await Future.delayed(const Duration(seconds: 2));
          },
          backgroundColor: Colors.white,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "Welcome Isa,",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              "Our (Brand name) App ",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                                      fillColor: Colors.black,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 0.0,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.black.withOpacity(0.8),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.tune,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SingleChildScrollView(
                              controller: ScrollController(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(10, (index) {
                                  return Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.22,
                                    padding: const EdgeInsets.all(10.0),
                                    margin: const EdgeInsets.all(12.0),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/image-1.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          20.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "50% Off",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        const Text(
                                          "On everything today",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12.0,
                                        ),
                                        const Text(
                                          "With code: yourbrandhere",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 80,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                            color: Colors.black,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "Get Now",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "Categories",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            BlocBuilder<CategoriesBloc, CategoriesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  loaded: (model) {
                                    return LayoutBuilder(
                                      builder: (context, constraint) {
                                        List items = model.data!;
                                        // print(items.length);
                                        return Wrap(
                                          children: List.generate(
                                            items.length,
                                            (index) {
                                              var item = items[index];
                                              return GestureDetector(
                                                onTap: () => Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoryProductView(
                                                      id: item.id,
                                                      name: item.name,
                                                    ),
                                                  ),
                                                ),
                                                child: Card(
                                                  color: Colors.black,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 12.0,
                                                      vertical: 4.0,
                                                    ),
                                                    child: Text(
                                                      "${item.name}",
                                                      style: const TextStyle(
                                                          fontSize: 11.0,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
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
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "Products",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            BlocBuilder<ProductsBloc, ProductsState>(
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
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        var item = model.data![index];
                                        return GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailProductView(
                                                      product: item),
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
                                                    borderRadius:
                                                        const BorderRadius.all(
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
                                                          backgroundColor:
                                                              Colors.black,
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border_outlined,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
