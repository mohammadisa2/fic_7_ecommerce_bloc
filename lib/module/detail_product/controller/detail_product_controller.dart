import 'package:fic_7_ecommerce/bloc/product_details/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../bloc/add_review/add_review_bloc.dart';
import '../../../data/models/request/review_request_model.dart';
import '../view/detail_product_view.dart';

class DetailProductController extends State<DetailProductView> {
  static late DetailProductController instance;
  late DetailProductView view;

  bool shouldShowDialog = true;
  @override
  void initState() {
    instance = this;
    context
        .read<ProductDetailsBloc>()
        .add(ProductDetailsEvent.getProductDetails(widget.productId));
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool isSlideUp = false;
  updateSlideUp(bool value) async {
    setState(() {
      isSlideUp = value;
    });
  }

  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    context
        .read<ProductDetailsBloc>()
        .add(ProductDetailsEvent.getProductDetails(widget.productId));
  }

  void showReviewDialog(BuildContext context) {
    if (shouldShowDialog != false) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          double rating = 0.0;
          TextEditingController commentController = TextEditingController();
          return BlocConsumer<AddReviewBloc, AddReviewState>(
            listener: (context, state) {
              // state.maybeWhen(
              //   orElse: () {},
              //   loaded: (data) {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (_) => DetailProductView(
              //           productId: widget.productId,
              //         ),
              //       ),
              //     );
              //   },
              // );
            },
            builder: (context, state) {
              return AlertDialog(
                backgroundColor: Colors.white,
                title: const Text("Review Product"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("You haven't reviewed this product yet."),
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
                      shouldShowDialog = false;
                      Navigator.pop(context);
                    },
                    child: const Text("Not Now"),
                  ),
                  TextButton(
                    onPressed: () {
                      ReviewRequestModel reviewRequest = ReviewRequestModel(
                        comment: commentController.text,
                        rating: rating,
                        productId: widget.productId,
                      );

                      context
                          .read<AddReviewBloc>()
                          .add(AddReviewEvent.create(reviewRequest));

                      shouldShowDialog = false;
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
    }
  }
}
