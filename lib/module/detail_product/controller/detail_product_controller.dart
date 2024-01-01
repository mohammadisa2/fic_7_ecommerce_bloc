import 'package:fic_7_ecommerce/bloc/cart/cart_bloc.dart';
import 'package:fic_7_ecommerce/bloc/product_details/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/must_review/must_review_bloc.dart';
import '../view/detail_product_view.dart';

class DetailProductController extends State<DetailProductView> {
  static late DetailProductController instance;
  late DetailProductView view;
  bool isReviewDialogShown = false;

  late ProductDetailsBloc _productDetailsBloc;
  late MustReviewBloc _mustReviewBloc;

  @override
  void initState() {
    instance = this;

    _productDetailsBloc = context.read<ProductDetailsBloc>();
    _productDetailsBloc
        .add(ProductDetailsEvent.getProductDetails(widget.productId));

    _mustReviewBloc = context.read<MustReviewBloc>();
    _mustReviewBloc.add(MustReviewEvent.mustReview(widget.productId));
    context.read<CartBloc>().add(const CartEvent.countMyCart());

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
}
