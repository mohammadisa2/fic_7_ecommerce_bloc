import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../controller/product_seller_controller.dart';

class ProductSellerView extends StatefulWidget {
  const ProductSellerView({Key? key}) : super(key: key);

  Widget build(context, ProductSellerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Seller"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 8,
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
                                "Category: Smartwatch",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Stock Quantity: 1",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Selling Price: 1.00",
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
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: const Text(
          "Add Product",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddProductSellerView()),
        ),
      ),
    );
  }

  @override
  State<ProductSellerView> createState() => ProductSellerController();
}
