import 'package:fic_7_ecommerce/bloc/add_cart/add_cart_bloc.dart';
import 'package:fic_7_ecommerce/data/models/request/add_cart_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:fic_7_ecommerce/core.dart';

import '../../../bloc/add_review/add_review_bloc.dart';
import '../../../bloc/cart/cart_bloc.dart';
import '../../../bloc/must_review/must_review_bloc.dart';
import '../../../bloc/product_details/product_details_bloc.dart';

import '../../../data/models/request/review_request_model.dart';
import '../controller/detail_product_controller.dart';

class DetailProductView extends StatefulWidget {
  final int productId;
  const DetailProductView({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  State<DetailProductView> createState() => DetailProductController();

  Widget build(context, DetailProductController controller) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.black38,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        onRefresh: controller.refreshData,
        child: BlocListener<AddCartBloc, AddCartState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (data) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text("Product has been successfully added to cart"),
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
          child: BlocBuilder<MustReviewBloc, MustReviewState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                error: (message) => Text('Error: $message'),
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (model) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    if (model.isHasReview == true &&
                        !controller.isReviewDialogShown) {
                      // print(model.isHasReview);
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          double rating = 0.0;
                          TextEditingController commentController =
                              TextEditingController();
                          return BlocConsumer<AddReviewBloc, AddReviewState>(
                            listener: (context, state) {
                              state.maybeMap(
                                loaded: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Review added successfully!'),
                                    ),
                                  );
                                },
                                error: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Failed to add review. Please try again.'),
                                    ),
                                  );
                                },
                                orElse: () {},
                              );
                            },
                            builder: (context, state) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: const Text("Review Product"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                        "You haven't reviewed this product yet."),
                                    const SizedBox(height: 16.0),
                                    const Text("Rate the product:"),
                                    RatingBar.builder(
                                      initialRating: rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemSize: 24.0,
                                      onRatingUpdate: (newRating) {
                                        rating = newRating;
                                      },
                                    ),
                                    const SizedBox(height: 16.0),
                                    const Text("Add a comment:"),
                                    TextField(
                                      controller: commentController,
                                      maxLines: 3,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Not Now"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      ReviewRequestModel reviewRequest =
                                          ReviewRequestModel(
                                        comment: commentController.text,
                                        rating: rating,
                                        productId: productId,
                                      );

                                      context.read<AddReviewBloc>().add(
                                          AddReviewEvent.create(reviewRequest));
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Submit"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                      controller.isReviewDialogShown = true;
                    }
                  });
                  return SingleChildScrollView(
                    clipBehavior: Clip.none,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
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
                                final product = model.data!;
                                return Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "${product.imageProduct}",
                                      ),
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      AnimatedPositioned(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        top: controller.isSlideUp ? 80 : 370,
                                        child: GestureDetector(
                                          onVerticalDragUpdate: (details) {
                                            // print(details.localPosition.dy);
                                            if (details.localPosition.dy <=
                                                -20) {
                                              controller.updateSlideUp(true);
                                            } else {
                                              controller.updateSlideUp(false);
                                            }
                                          },
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 800),
                                                  height: 6,
                                                  width: controller.isSlideUp
                                                      ? 0
                                                      : 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black38,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(12.0),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 12.0,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 20,
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(32),
                                                        topRight:
                                                            Radius.circular(32),
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 60,
                                                            // color: Colors.red,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      "${product.name}",
                                                                      style:
                                                                          const TextStyle(
                                                                        fontSize:
                                                                            20.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          8.0,
                                                                    ),
                                                                    Text(
                                                                      "${product.category!.name}",
                                                                      style:
                                                                          const TextStyle(
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .all(
                                                                      Radius.circular(
                                                                          20.0),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.remove,
                                                                            size:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        "1",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              const Icon(
                                                                            Icons.add,
                                                                            size:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8.0,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                product.reviews!
                                                                        .isNotEmpty
                                                                    ? (product.reviews!.map((review) => review.rating!).reduce((a, b) =>
                                                                                a +
                                                                                b) /
                                                                            product
                                                                                .reviews!.length)
                                                                        .toStringAsFixed(
                                                                            2)
                                                                    : 'No reviews',
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 4.0,
                                                              ),
                                                              RatingBar.builder(
                                                                initialRating: product
                                                                        .reviews!
                                                                        .isNotEmpty
                                                                    ? (product.reviews!.map((review) => review.rating!).reduce((a, b) =>
                                                                                a +
                                                                                b) /
                                                                            product.reviews!.length)
                                                                        .toDouble()
                                                                    : 0.0,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    true,
                                                                itemCount: 5,
                                                                itemBuilder:
                                                                    (context,
                                                                            _) =>
                                                                        const Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .amber,
                                                                ),
                                                                itemSize: 16.0,
                                                                onRatingUpdate:
                                                                    (rating) {},
                                                              ),
                                                              const SizedBox(
                                                                width: 4.0,
                                                              ),
                                                              Text(
                                                                "(${product.reviews!.length} Reviews)",
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            height: 20.0,
                                                          ),
                                                          const Text(
                                                            "Description",
                                                            style: TextStyle(
                                                              fontSize: 20.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8.0,
                                                          ),
                                                          Text(
                                                            "${product.description}",
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8.0,
                                                          ),
                                                          const Divider(),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  const Text(
                                                                    "Price",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14.0,
                                                                        color: Colors
                                                                            .black45),
                                                                  ),
                                                                  Text(
                                                                    "Rp. ${product.price}",
                                                                    style:
                                                                        const TextStyle(
                                                                      fontSize:
                                                                          20.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 50,
                                                                width: 150,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .all(
                                                                    Radius.circular(
                                                                        25.0),
                                                                  ),
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    final AddCartRequestModel
                                                                        requestModel =
                                                                        AddCartRequestModel(
                                                                            productId:
                                                                                productId);

                                                                    context
                                                                        .read<
                                                                            AddCartBloc>()
                                                                        .add(AddCartEvent.add(
                                                                            requestModel));

                                                                    context
                                                                        .read<
                                                                            CartBloc>()
                                                                        .add(const CartEvent
                                                                            .countMyCart());
                                                                  },
                                                                  child:
                                                                      const Row(
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .shopping_bag_outlined,
                                                                        size:
                                                                            24.0,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      Spacer(),
                                                                      Text(
                                                                        "Add to cart",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            12.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(),
                                                          Text(
                                                            "${product.reviews!.length} Reviews",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 20.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 4.0,
                                                          ),
                                                          Expanded(
                                                            child: ListView
                                                                .builder(
                                                              itemCount: product
                                                                  .reviews!
                                                                  .length,
                                                              shrinkWrap: true,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 0,
                                                                bottom: 100,
                                                              ),
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                var item = product
                                                                        .reviews![
                                                                    index];
                                                                return Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          12),
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      const CircleAvatar(
                                                                        backgroundColor:
                                                                            Colors.black,
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .person,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            8.0,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "${item.user!.name}",
                                                                              style: const TextStyle(
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 4.0,
                                                                            ),
                                                                            RatingBar.builder(
                                                                              initialRating: item.rating!,
                                                                              minRating: 1,
                                                                              direction: Axis.horizontal,
                                                                              allowHalfRating: true,
                                                                              itemCount: 5,
                                                                              itemBuilder: (context, _) => const Icon(
                                                                                Icons.star,
                                                                                color: Colors.amber,
                                                                              ),
                                                                              itemSize: 16.0,
                                                                              onRatingUpdate: (rating) {
                                                                                // print(rating);
                                                                              },
                                                                            ),
                                                                            const SizedBox(
                                                                              height: 4.0,
                                                                            ),
                                                                            Text(
                                                                              "${item.comment}",
                                                                              textAlign: TextAlign.justify,
                                                                              style: const TextStyle(
                                                                                fontSize: 12.0,
                                                                              ),
                                                                              maxLines: 3,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ).animate().moveY(
                                                begin: MediaQuery.of(context)
                                                    .size
                                                    .height,
                                                end: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                                duration: const Duration(
                                                  milliseconds: 800,
                                                ),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
