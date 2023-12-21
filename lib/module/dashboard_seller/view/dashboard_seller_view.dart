import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/dashboard_seller_controller.dart';

class DashboardSellerView extends StatefulWidget {
  const DashboardSellerView({Key? key}) : super(key: key);

  Widget build(context, DashboardSellerController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome Seller,",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Our (Brand name) App ",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "On Cart",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_checkout,
                                size: 50.0,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "On Ordered",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.archive_outlined,
                                size: 50.0,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Has Paid",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 50.0,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Has Delivered",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delivery_dining_outlined,
                                size: 50.0,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardSellerView> createState() => DashboardSellerController();
}
