import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';  // Replace with the actual name of your home page file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.jpeg'), // splash image
        nextScreen: HomePage(), //  home page widget
        splashTransition: SplashTransition.rotationTransition,
        duration: 3000,
      ),
    );
  }
}
