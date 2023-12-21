import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/wishlist_view.dart';

class WishlistController extends State<WishlistView> {
  static late WishlistController instance;
  late WishlistView view;

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
