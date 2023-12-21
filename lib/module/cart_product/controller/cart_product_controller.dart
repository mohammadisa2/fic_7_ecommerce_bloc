import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/cart_product_view.dart';

class CartProductController extends State<CartProductView> {
  static late CartProductController instance;
  late CartProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
