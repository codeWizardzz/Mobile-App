import 'package:flutter/material.dart';
import 'package:gazeta/core/constants/constants.dart';
import 'package:gazeta/theme/pallet.dart';

class SignInAsGuest extends StatelessWidget {
  const SignInAsGuest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 0.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Image.asset(
          Constants.profilePath,
          width: 35,
        ),
        label: const Text(
          'Continue as a Guest',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.brownColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}