import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/main_navigation_seller_view.dart';

class MainNavigationSellerController extends State<MainNavigationSellerView> {
  static late MainNavigationSellerController instance;
  late MainNavigationSellerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
