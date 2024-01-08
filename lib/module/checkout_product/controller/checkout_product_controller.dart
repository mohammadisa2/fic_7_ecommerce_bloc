import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/cart/cart_bloc.dart';
import '../../../data/models/request/order_request_model.dart';
import '../view/checkout_product_view.dart';

class CheckoutProductController extends State<CheckoutProductView> {
  static late CheckoutProductController instance;
  late CheckoutProductView view;
  int subPrice = 0;
  int totalPrice = 0;
  List<Item> items = [];
  int shippingCost = 22000;

  @override
  void initState() {
    instance = this;
    super.initState();
    context.read<CartBloc>().add(const CartEvent.fecthMyCart());
    subPrice = widget.subPrice;
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
