import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/wishlist_controller.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({Key? key}) : super(key: key);

  Widget build(context, WishlistController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "My Wishlist",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Apple Smartwatch 9N Series",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                const Text(
                                  "Smartwatch",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                const Text(
                                  "Price: 1.00",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                        color: Colors.black,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Add to chart",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
  State<WishlistView> createState() => WishlistController();
}
