import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazeta/features/auth/controller/auth_controller.dart';
import 'package:routemaster/routemaster.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatelessWidget {
  const onboarding({Key? key}) : super(key: key);

  void signInAsGuest(WidgetRef ref, BuildContext context) {
    ref.read(authControllerProvider.notifier).signInAsGuest(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingScreen(),
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    PageView(
      controller: _controller,
      children: [
        _buildPage(
          text: 'Join the Discussion!',
          imagePath: 'assets/svg/News-cuate.svg',
        ),
        _buildPage(
          imagePath: 'assets/svg/News-bro.svg',
          text: 'Explore News!',
        ),
        _buildPage(
          imagePath: 'assets/svg/News-pana.svg',
          text: 'Discover Stories!',
        ),
        _buildPage(
          imagePath: 'assets/svg/Newsletter-pana.svg',
          text: 'Get Informed!',
        ),
        _buildPage(
          imagePath: 'assets/svg/Newsletter-cuate.svg',
          text: 'Stay Updated!',
        ),
      ],
    ),
    Positioned(
      top: 30,
      right: 15,
      child: ElevatedButton(
        onPressed: () {
          // Navigate to login screen
          Routemaster.of(context).push('/login');
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text('Skip'),
      ),
    ),
    Positioned(
      bottom: 50,
      left: 0,
      right: 10,
      child: Align(
        alignment: Alignment(0, 0),
        child: SmoothPageIndicator(
          controller: _controller,
          count: 5,
          effect: WormEffect(activeDotColor: Colors.white,
          dotColor: const Color.fromARGB(255, 0, 0, 0),
              ),
           
        ),
      ),
    ),
  ],
);
  }

  Widget _buildPage({
    required String imagePath,
    required String text,
  }) {
    return Container(
      color: const Color(0xFFE4A839),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          SvgPicture.asset(
            imagePath,
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}
