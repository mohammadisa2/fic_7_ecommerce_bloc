import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/detail_product_view.dart';

class DetailProductController extends State<DetailProductView> {
  static late DetailProductController instance;
  late DetailProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuList = [
    {
      "label": "Restaurants",
      "icon": Icons.restaurant,
    },
    {
      "label": "Hotel",
      "icon": Icons.hotel,
    },
    {
      "label": "Shoppings",
      "icon": Icons.shopping_bag,
    },
    {
      "label": "Hospitals",
      "icon": Icons.local_hospital,
    },
    {
      "label": "Schools",
      "icon": Icons.school,
    },
  ];

  List places = [
    {
      "photo": "https://picsum.photos/1000",
      "rating": 4.4,
      "name": "Ubud Villa",
      "location": "Jakarta, Indonesia",
      "price": 246,
      "distance": 10,
    },
    {
      "photo": "https://picsum.photos/1001",
      "rating": 4.7,
      "name": "Taman Sari Villa",
      "location": "Bali, Indonesia",
      "price": 278,
      "distance": 20,
    },
    {
      "photo": "https://picsum.photos/1002",
      "rating": 4.2,
      "name": "Nusa Penida Villa",
      "location": "Nusa Penida, Indonesia",
      "price": 312,
      "distance": 30,
    },
    {
      "photo": "https://picsum.photos/1003",
      "rating": 4.6,
      "name": "Amankila Villa",
      "location": "Bali, Indonesia",
      "price": 356,
      "distance": 140,
    },
    {
      "photo": "https://picsum.photos/1004",
      "rating": 4.8,
      "name": "Legian Villa",
      "location": "Seminyak, Indonesia",
      "price": 389,
      "distance": 50,
    },
    {
      "photo": "https://picsum.photos/1005",
      "rating": 4.3,
      "name": "Lombok Villa",
      "location": "Gili Trawangan, Indonesia",
      "price": 411,
      "distance": 60,
    },
    {
      "photo": "https://picsum.photos/1006",
      "rating": 4.9,
      "name": "Canggu Villa",
      "location": "Bali, Indonesia",
      "price": 466,
      "distance": 40,
    },
    {
      "photo": "https://picsum.photos/1007",
      "rating": 4.1,
      "name": "Raja Ampat Villa",
      "location": "Raja Ampat, Indonesia",
      "price": 511,
      "distance": 50,
    },
    {
      "photo": "https://picsum.photos/1008",
      "rating": 4.5,
      "name": "Sarangan Villa",
      "location": "Sarangan, Indonesia",
      "price": 537,
      "distance": 100,
    },
    {
      "photo": "https://picsum.photos/1009",
      "rating": 4.0,
      "name": "Lovina Villa",
      "location": "Lovina, Indonesia",
      "price": 611,
      "distance": 20,
    }
  ];

  bool isSlideUp = false;
  updateSlideUp(bool value) async {
    setState(() {
      isSlideUp = value;
    });
  }
}
