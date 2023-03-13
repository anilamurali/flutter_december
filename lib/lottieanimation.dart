import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text("Lottie Animation"),),
    body: Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 23, 131, 180),
            Color.fromARGB(255, 250, 248, 249),
            Color.fromARGB(255, 61, 59, 36)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child: ListView(
          children: [
            Lottie.asset("assets/animation/phone_animation.json"),
            Lottie.network("https://assets2.lottiefiles.com/packages/lf20_Q7WY7CfUco.json")
          ],
        ),
      ),
    ),
   );
  }

}