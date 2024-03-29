import 'package:flutter/material.dart';
import 'package:gazeta/features/Authentication/screens/login.dart';
import 'package:gazeta/theme/pallet.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
