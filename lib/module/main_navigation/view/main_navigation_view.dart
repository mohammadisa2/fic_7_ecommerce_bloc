import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fic_7_ecommerce/bloc/banners/banners_bloc.dart';
import 'package:fic_7_ecommerce/bloc/my_orders/my_orders_bloc.dart';
import 'package:fic_7_ecommerce/core.dart';

import '../../../bloc/add_favorite_product/add_favorite_product_bloc.dart';
import '../controller/main_navigation_controller.dart';

// ignore: must_be_immutable
class MainNavigationView extends StatefulWidget {
  int? initialIndex;
  MainNavigationView({
    Key? key,
    this.initialIndex,
  }) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
      length: 4,
      initialIndex: initialIndex ?? 0,
      child: Scaffold(
        body: IndexedStack(
          index: initialIndex ?? 0,
          children: [
            MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => AddFavoriteProductBloc(),
                ),
                BlocProvider(
                  create: (context) => BannersBloc(),
                ),
              ],
              child: const DashboardView(),
            ),
            BlocProvider(
              create: (context) => MyOrdersBloc(),
              child: const OrderDetailView(),
            ),
            const WishlistView(),
            const ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          currentIndex: initialIndex ?? 0,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
