import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mehndi_app/main.dart';
import 'package:mehndi_app/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Screen1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 159, 115, 112),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Container(
            child: Image(
              height: 200,
              width: 200,
              image: AssetImage("assets/pictures/splash.png"),
            ),
          )),
          SizedBox(height: 30),
          LoadingAnimationWidget.staggeredDotsWave(
            color: const Color.fromARGB(255, 42, 31, 31),
            size: 70.0,
          )
        ],
      ),
    );
  }
}
