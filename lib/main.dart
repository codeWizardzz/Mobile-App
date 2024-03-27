import 'package:flutter/material.dart';
import 'package:gazeta/features/Authentication/screens/login.dart';
import 'package:gazeta/theme/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GazetaHub',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}

