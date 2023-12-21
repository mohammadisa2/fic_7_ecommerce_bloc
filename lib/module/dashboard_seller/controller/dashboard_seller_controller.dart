import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/dashboard_seller_view.dart';

class DashboardSellerController extends State<DashboardSellerView> {
  static late DashboardSellerController instance;
  late DashboardSellerView view;

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
