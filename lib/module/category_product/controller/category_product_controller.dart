import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/category_product_view.dart';

class CategoryProductController extends State<CategoryProductView> {
  static late CategoryProductController instance;
  late CategoryProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "photo": "assets/images/image-3.png",
      "product_name": "Belivia Bag",
      "price": 25,
      "category": "Bag",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 20,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo": "assets/images/image-4.png",
      "product_name": "Nike Force",
      "price": 22,
      "category": "Shoes",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 18,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo": "assets/images/image-3.png",
      "product_name": "Belivia Bag",
      "price": 33,
      "category": "Bag",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo": "assets/images/image-4.png",
      "product_name": "Nike Force",
      "price": 31,
      "category": "Shoes",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo": "assets/images/image-3.png",
      "product_name": "Belivia Bag",
      "price": 32,
      "category": "Shoes",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": true,
    },
    {
      "id": 6,
      "photo": "assets/images/image-4.png",
      "product_name": "Nike Force",
      "price": 49,
      "category": "Shoes",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 45,
      "is_favorite": false,
    }
  ];
}
