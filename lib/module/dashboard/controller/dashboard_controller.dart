import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        context.read<ProductsBloc>().add(const ProductsEvent.loadNextPage());
      }
    });
    context.read<CategoriesBloc>().add(const CategoriesEvent.getCategories());
    context.read<ProductsBloc>().add(const ProductsEvent.getAll());
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
