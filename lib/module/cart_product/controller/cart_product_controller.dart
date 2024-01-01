import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/cart/cart_bloc.dart';
import '../view/cart_product_view.dart';

class CartProductController extends State<CartProductView> {
  static late CartProductController instance;
  late CartProductView view;
  MainNavigationController? getMainNavigationController() {
    return MainNavigationController.instance;
  }

  @override
  void initState() {
    instance = this;
    super.initState();
    context.read<CartBloc>().add(const CartEvent.fecthMyCart());
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
