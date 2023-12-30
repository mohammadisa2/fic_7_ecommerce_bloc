import 'package:fic_7_ecommerce/bloc/my_favorite_product/my_favorite_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view/wishlist_view.dart';

class WishlistController extends State<WishlistView> {
  static late WishlistController instance;
  late WishlistView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    context
        .read<MyFavoriteProductBloc>()
        .add(const MyFavoriteProductEvent.fetchMyFavProd());
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
