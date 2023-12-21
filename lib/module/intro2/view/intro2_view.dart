import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:lottie/lottie.dart';
import '../../../core/icon_button/circle_icon_button.dart';

class Intro2View extends StatefulWidget {
  const Intro2View({Key? key}) : super(key: key);

  Widget build(context, Intro2Controller controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(
                    "Why Choose: Your Brand Name",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("assets/animations/delivery1.json"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Center(
                        child: Text(
                          "3F Free, Fast & Freight",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircleIconButton(
                    iconData: Icons.keyboard_double_arrow_right_outlined,
                    backgroundColor: Colors.black,
                    iconColor: Colors.white,
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Intro3View(),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Intro2View> createState() => Intro2Controller();
}
