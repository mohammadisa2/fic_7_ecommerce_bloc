import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:lottie/lottie.dart';
import '../../../core/icon_button/circle_icon_button.dart';
import '../controller/intro3_controller.dart';

class Intro3View extends StatefulWidget {
  const Intro3View({Key? key}) : super(key: key);

  Widget build(context, Intro3Controller controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("assets/animations/airplane.json"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      // color: Colors.blue,
                      child: const Text(
                        "Facilitating efficient deliveries nationwide in Indonesia and over 200 countries worldwide.",
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
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
                        builder: (context) => const LoginView(),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Intro3View> createState() => Intro3Controller();
}
