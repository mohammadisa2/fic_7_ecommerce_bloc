import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../../../core/radio.dart';
import '../../../core/validator.dart';
import '../controller/checkout_product_controller.dart';

class CheckoutProductView extends StatefulWidget {
  const CheckoutProductView({Key? key}) : super(key: key);

  Widget build(context, CheckoutProductController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
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
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Text(
                    "Delivery Address",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              QRadioField(
                label: "Choose your Address",
                hint: "Address",
                validator: Validator.atLeastOneitem,
                items: const [
                  {
                    "value": 1,
                    "label": "First Address",
                    "phone": "0812 **** ****",
                    "address": "Bogor, Indonesia",
                  },
                  {
                    "value": 2,
                    "label": "Second Address",
                    "phone": "0851 **** ****",
                    "address": "Jakarta, Indonesia",
                  }
                ],
                onChanged: (value, label, phone, address) {},
              ),
              const Text(
                "Product Items",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
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
                            width: 96,
                            height: 96,
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
                                  height: 6.0,
                                ),
                                const Text(
                                  "Smartwatch",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "1.00",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "Quantity: 2",
                                  style: TextStyle(
                                    fontSize: 12.0,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          color: Colors.black54,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fee Delivery",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Rp. 100.000",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Rp. 1.000.000",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 50,
              width: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(24.0),
                ),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Place Order",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CheckoutProductView> createState() => CheckoutProductController();
}
