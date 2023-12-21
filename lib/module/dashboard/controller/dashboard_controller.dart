import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/categories/categories_bloc.dart';
import '../../../bloc/products/products_bloc.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    context.read<CategoriesBloc>().add(const CategoriesEvent.getCategories());
    context.read<ProductsBloc>().add(const ProductsEvent.getAll());
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
