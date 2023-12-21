import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/cart_product_controller.dart';

class CartProductView extends StatefulWidget {
  const CartProductView({Key? key}) : super(key: key);

  Widget build(context, CartProductController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: Badge(
                      backgroundColor: Colors.black,
                      offset: const Offset(-5, 2),
                      label: const Text(
                        "4",
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "My cart",
                style: TextStyle(
                  fontSize: 20.0,
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
                            width: 118,
                            height: 118,
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
                                  "1.00",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        radius: 16.0,
                                        backgroundColor: Colors.grey[200],
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.grey,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6.0,
                                      ),
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        radius: 16.0,
                                        backgroundColor: Colors.grey[200],
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        radius: 16.0,
                                        backgroundColor: Colors.grey[200],
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.grey,
                                          size: 16.0,
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total (4 Item)",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    "Rp.500.000",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckoutProductView()),
                ),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Proceed to Checkout",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartProductView> createState() => CartProductController();
}
