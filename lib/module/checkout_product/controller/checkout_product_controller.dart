import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/checkout_product_view.dart';

class CheckoutProductController extends State<CheckoutProductView> {
  static late CheckoutProductController instance;
  late CheckoutProductView view;

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
