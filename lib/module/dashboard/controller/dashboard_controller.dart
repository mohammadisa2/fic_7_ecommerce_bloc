import 'package:carousel_slider/carousel_controller.dart';
import 'package:fic_7_ecommerce/bloc/banners/banners_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/cart/cart_bloc.dart';
import '../../../bloc/categories/categories_bloc.dart';
import '../../../bloc/products/products_bloc.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;
  late ScrollController scrollController;

  @override
  void initState() {
    instance = this;
    scrollController = ScrollController();
    // scrollController.addListener(() {
    //   if (scrollController.position.pixels ==
    //       scrollController.position.maxScrollExtent) {
    //     context.read<ProductsBloc>().add(const ProductsEvent.loadNextPage());
    //   }
    // });
    context.read<CategoriesBloc>().add(const CategoriesEvent.getCategories());
    context.read<ProductsBloc>().add(const ProductsEvent.getAll());
    context.read<BannersBloc>().add(const BannersEvent.getBanners());
    context.read<CartBloc>().add(const CartEvent.countMyCart());
    super.initState();
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        scrollController.position.extentAfter == 0) {
      context.read<ProductsBloc>().add(const ProductsEvent.loadNextPage());
    }
    return false;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
