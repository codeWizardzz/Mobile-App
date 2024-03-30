import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gazeta/core/common/sign_in_button.dart';
import 'package:gazeta/core/constants/constants.dart';
import 'package:gazeta/features/Authentication/controller/auth_control.dart';

import '../../../core/common/sign_in_us_guest.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        title: Image.asset(
          Constants.logoPath,
          height: 95,
          width: 400,
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: const Text(
        //       'Skip',
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(
              Constants.loginEmotePath,
              height: 500,
            ),
          ),
          // const SizedBox(height: 20),
          const SignInButton(),
          const SizedBox(height: 8),
          const SignInAsGuest(),
          // const Responsive(child: SignInButton()),
        ],
      ),
    );
  }
}
