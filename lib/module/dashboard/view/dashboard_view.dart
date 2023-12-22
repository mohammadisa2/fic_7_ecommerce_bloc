import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/banners/banners_bloc.dart';
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
        child: NotificationListener(
          onNotification: (ScrollNotification notification) {
            return true;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<ProductsBloc>().add(const ProductsEvent.refresh());
              await Future.delayed(const Duration(seconds: 2));
            },
            backgroundColor: Colors.white,
            child: CustomScrollView(
              controller: controller.scrollController,
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
                              BlocBuilder<BannersBloc, BannersState>(
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
                                    loaded: (model) {
                                      return Builder(builder: (context) {
                                        List images = model.data!
                                            .map((banner) =>
                                                banner.bannerUrl ?? "")
                                            .toList();

                                        return Column(
                                          children: [
                                            CarouselSlider(
                                              carouselController:
                                                  controller.carouselController,
                                              options: CarouselOptions(
                                                viewportFraction: 1,
                                                aspectRatio: 2.2,
                                                autoPlay: true,
                                                enlargeCenterPage: true,
                                                onPageChanged: (index, reason) {
                                                  controller.currentIndex =
                                                      index;
                                                },
                                              ),
                                              items: images.map((imageUrl) {
                                                return Builder(
                                                  builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 5.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                          Radius.circular(6.0),
                                                        ),
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                            imageUrl,
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }).toList(),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: images
                                                  .asMap()
                                                  .entries
                                                  .map((entry) {
                                                return GestureDetector(
                                                  onTap: () => controller
                                                      .carouselController
                                                      .animateToPage(entry.key),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 4.0),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: (Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Colors.white
                                                                : Colors.black)
                                                            .withOpacity(
                                                                controller.currentIndex ==
                                                                        entry
                                                                            .key
                                                                    ? 0.9
                                                                    : 0.4)),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ],
                                        );
                                      });
                                    },
                                  );
                                },
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
                                                            color:
                                                                Colors.white),
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
                                                          const BorderRadius
                                                              .all(
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
                                                              color:
                                                                  Colors.white,
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
      ),
    );
  }
}
