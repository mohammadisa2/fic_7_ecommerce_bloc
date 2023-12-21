import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:image_picker/image_picker.dart';
import '../view/add_product_seller_view.dart';

class AddProductSellerController extends State<AddProductSellerView> {
  static late AddProductSellerController instance;
  late AddProductSellerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  List<Map<String, dynamic>> categories = [
    {'id': 1, 'name': 'Electronics'},
    {'id': 2, 'name': 'Clothing'},
    {'id': 3, 'name': 'Home and Furniture'},
    // Add more dummy categories as needed
  ];

  // Selected category ID
  int? selectedCategoryId;

  // Method to update the selected category
  void setSelectedCategoryId(int? categoryId) {
    setState(() {
      selectedCategoryId = categoryId;
    });
  }

  XFile? imageFile;

  String imageUrl = '';

  Future<void> getImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: source);
    if (photo != null) {
      setState(() {
        imageFile = photo;
        // Konversi XFile menjadi File
        File file = File(photo.path);
        // Lakukan apa yang diperlukan dengan file (misalnya, menyimpannya atau menampilkan di UI)
        // Di sini, kita hanya menetapkan path gambar ke imageUrl untuk ditampilkan di UI
        imageUrl = file.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
