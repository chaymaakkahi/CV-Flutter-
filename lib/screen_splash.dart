import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.jpeg'), // Replace with your splash image
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 3000,
      ),
    );
  }
}
