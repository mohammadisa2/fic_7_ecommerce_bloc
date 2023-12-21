import 'package:fic_7_ecommerce/bloc/logout/logout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/main_navigation_seller_controller.dart';

class MainNavigationSellerView extends StatefulWidget {
  const MainNavigationSellerView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationSellerController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardSellerView(),
            const ProductSellerView(),
            BlocProvider(
              create: (context) => LogoutBloc(),
              child: const ProfileView(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          currentIndex: controller.selectedIndex,
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
                Icons.add_business_outlined,
              ),
              label: "Product",
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
  State<MainNavigationSellerView> createState() =>
      MainNavigationSellerController();
}
