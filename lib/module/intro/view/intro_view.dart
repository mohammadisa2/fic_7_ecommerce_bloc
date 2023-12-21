import 'package:fic_7_ecommerce/core/icon_button/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:lottie/lottie.dart';
import '../controller/intro_controller.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  Widget build(context, IntroController controller) {
    controller.view = this;
    return Scaffold(
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
                child: Lottie.asset("assets/animations/payment1.json"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Center(
                        child: Text(
                          "Supports all types of payments",
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
                        builder: (context) => const Intro2View(),
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
  State<IntroView> createState() => IntroController();
}
