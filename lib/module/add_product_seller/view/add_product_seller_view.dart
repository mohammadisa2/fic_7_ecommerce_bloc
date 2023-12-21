import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:image_picker/image_picker.dart';
import '../controller/add_product_seller_controller.dart';

class AddProductSellerView extends StatefulWidget {
  const AddProductSellerView({Key? key}) : super(key: key);

  Widget build(context, AddProductSellerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product Seller"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const QTextField(
                label: "Name Product",
                enabled: true,
              ),
              TextFormField(
                initialValue:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                maxLength: 150,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Product Description",
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              DropdownButtonFormField<int>(
                dropdownColor: Colors.white,
                decoration: const InputDecoration(
                  // enabled: false,
                  labelText: 'Select Category',
                  border: OutlineInputBorder(),
                ),
                value: controller.selectedCategoryId,
                onChanged: (value) {
                  // Update the selected category when the user makes a selection
                  controller.setSelectedCategoryId(value);
                },
                items: controller.categories
                    .map((category) => DropdownMenuItem<int>(
                          value: category['id'],
                          child: Text(category['name']),
                        ))
                    .toList(),
              ),
              const QTextField(
                keyboardType: TextInputType.number,
                label: "Price",
                suffixIcon: Icons.numbers,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Upload Image*",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: controller.imageFile != null
                    ? Image.file(
                        File(controller
                            .imageUrl), // Gunakan path yang telah diset di imageUrl
                        // height: 150,
                      )
                    : Image.asset(
                        'assets/images/placeholder_1x1.png',
                        // height: 150,
                      ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.getImage(ImageSource.camera);
                      },
                      child: const Text(
                        "Camera",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.getImage(ImageSource.gallery);
                      },
                      child: const Text(
                        "Gallery",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        onPressed: () {},
        child: const Text(
          "Add Product",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  State<AddProductSellerView> createState() => AddProductSellerController();
}
