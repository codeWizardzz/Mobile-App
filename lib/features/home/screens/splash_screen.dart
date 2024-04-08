import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Customize background color
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(
              fontSize: 24, color: Colors.white), // Customize text style
        ),
      ),
    );
  }
}