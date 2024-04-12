import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Create a Tween for the rotation angle
    _animation = Tween<double>(
      begin: 0,
      end: 2 * 3.141,
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4A839),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Apply the rotation animation to the image
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 400,
                  width: 400,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:lottie/lottie.dart';

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE4A839), // Set background color to white
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Center the Lottie animation
//           Expanded(
//             child: Center(
//               child: Image.asset(
//                 'assets/images/logo.png', // Replace 'your_image.png' with the path to your image
//                 height: 500, // Adjust the height as needed
//                 width: 500, // Adjust the width as needed
//               ),
//               // child: SizedBox(
//               //   width: 500, // Adjust width as needed
//               //   height: 500, // Adjust height as needed
//               //   child: Lottie.asset(
//               //     'assets/lottie/splashscreen.json',
//               //     // Optionally, you can also specify animation controller and options here
//               //   ),
//               // ),
//             ),
//           ),
//           // Text below the Lottie animation
//         ],
//       ),
//     );
//   }
// }
