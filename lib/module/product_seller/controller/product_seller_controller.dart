import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/product_seller_view.dart';

class ProductSellerController extends State<ProductSellerView> {
  static late ProductSellerController instance;
  late ProductSellerView view;

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
