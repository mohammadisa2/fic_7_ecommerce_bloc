import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

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
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [
            DashboardView(),
            OrderDetailView(),
            WishlistView(),
            ProfileView(),
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
