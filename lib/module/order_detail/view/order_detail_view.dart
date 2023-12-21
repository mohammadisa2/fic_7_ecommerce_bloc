import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/order_detail_controller.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({Key? key}) : super(key: key);

  Widget build(context, OrderDetailController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 20),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Ongoing",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 20),
                      shadowColor: Colors.black,
                      backgroundColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Completed",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    // var item = {};
                    return Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1643681154051-c43090a0fadb?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apple Smartwatch 9N Series",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Smartwatch",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Quantity: 1",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Price: 1.00",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OrderDetailView> createState() => OrderDetailController();
}
