import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 228, 211, 166), // Set background color to white
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center the Lottie animation
          Expanded(
            child: Center(
              child: SizedBox(
                width: 500, // Adjust width as needed
                height: 500, // Adjust height as needed
                child: Lottie.asset(
                  'assets/lottie/splashscreen.json',
                  // Optionally, you can also specify animation controller and options here
                ),
              ),
            ),
          ),
          // Text below the Lottie animation
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Text(
              'GazetaHub',
              style: TextStyle(
                fontSize: 34,
                color: Color(0xFF7E6520), // Set text color to 7E6520
                fontFamily:
                    'DancingScript', // Set font family to Dancing Script
              ),
            ),
          ),
        ],
      ),
    );
  }
}
