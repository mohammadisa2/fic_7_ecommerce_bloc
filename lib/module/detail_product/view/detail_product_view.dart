// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:fic_7_ecommerce/core.dart';

import '../../../data/models/response/products_response_model.dart';
import '../controller/detail_product_controller.dart';

class DetailProductView extends StatefulWidget {
  final Product product;
  DetailProductView({
    Key? key,
    required this.product,
  }) : super(key: key);

  Widget build(context, DetailProductController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.black38,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.black38,
            child: Badge(
              backgroundColor: Colors.black,
              offset: Offset(-5, 2),
              label: Text(
                "4",
              ),
              child: IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartProductView(),
                  ),
                ),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "${product.imageProduct}",
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 400),
                  top: controller.isSlideUp ? 80 : 370,
                  child: GestureDetector(
                    onVerticalDragUpdate: (details) {
                      // print(details.localPosition.dy);
                      if (details.localPosition.dy <= -20) {
                        controller.updateSlideUp(true);
                      } else {
                        controller.updateSlideUp(false);
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          AnimatedContainer(
                            duration: Duration(milliseconds: 800),
                            height: 6,
                            width: controller.isSlideUp ? 0 : 40,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 10,
                                right: 10,
                              ),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      // color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${product.name}",
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              Text(
                                                "${product.category!.name}",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 100,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20.0),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.remove,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "0",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4.0,
                                        ),
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemSize: 16.0,
                                          onRatingUpdate: (rating) {},
                                        ),
                                        SizedBox(
                                          width: 4.0,
                                        ),
                                        Text(
                                          "(320 Reviews)",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      "Description",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "${product.description}",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Price",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black45),
                                            ),
                                            Text(
                                              "\Rp. ${product.price}",
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 50,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(25.0),
                                            ),
                                            color: Colors.black,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Icon(
                                                  Icons.shopping_bag_outlined,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Add to cart",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 12.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 5,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.only(
                                          top: 0,
                                          bottom: 100,
                                        ),
                                        itemBuilder: (context, index) {
                                          // var item = {};
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 12),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.black,
                                                  child: Icon(
                                                    Icons.person,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8.0,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "John Doe",
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4.0,
                                                      ),
                                                      RatingBar.builder(
                                                        initialRating: 3,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                        itemSize: 16.0,
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 4.0,
                                                      ),
                                                      Text(
                                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: TextStyle(
                                                          fontSize: 12.0,
                                                        ),
                                                        maxLines: 3,
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                          ),
                        ],
                      ),
                    ).animate().moveY(
                          begin: MediaQuery.of(context).size.height,
                          end: MediaQuery.of(context).size.height * 0.02,
                          duration: Duration(
                            milliseconds: 800,
                          ),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailProductView> createState() => DetailProductController();
}
