import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: -60,
              top: -90,
              child: Transform.rotate(
                angle: 0.9,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bubble.png"),
                    ),
                  ),
                ).animate().fadeIn(duration: 2000.ms),
              ),
            ),
            Positioned(
              left: -60,
              bottom: -90,
              child: Transform.rotate(
                angle: 0.9,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bubble.png"),
                    ),
                  ),
                ).animate().fadeIn(duration: 2000.ms),
              ),
            ),
            Positioned(
              right: -60,
              top: -90,
              child: Transform.rotate(
                angle: 0.3,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bubble.png"),
                    ),
                  ),
                ).animate().fadeIn(duration: 2000.ms),
              ),
            ),
            Positioned(
              right: -60,
              bottom: -90,
              child: Transform.rotate(
                angle: 0.9,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bubble.png"),
                    ),
                  ),
                ).animate().fadeIn(duration: 2000.ms),
              ),
            ),
            Center(
              child: SizedBox(
                height: 550,
                width: 550,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 500.0,
                      height: 500.0,
                    ).animate().fadeIn(duration: 3000.ms),
                    const Text(
                      "Your Brand Name Here",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ).animate().fadeIn(duration: 3000.ms),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
