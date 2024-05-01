import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gazeta/core/constants/constants.dart';
import 'package:gazeta/features/auth/controller/auth_controller.dart';
import 'package:gazeta/theme/pallete.dart';

class SignInAsGuest extends ConsumerWidget {
  const SignInAsGuest({super.key});
   /// Function to handle sign-in as a guest.
  void signInAsGuest(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInAsGuest(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 0.0),
      child: ElevatedButton.icon(
        onPressed: () => signInAsGuest(context, ref),
        icon: Image.asset(
          Constants.profilePath,
          width: 35,
        ),
        label: const Text(
          'Continue as a Guest',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE4A839),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
