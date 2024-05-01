import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gazeta/core/constants/constants.dart';
import 'package:gazeta/features/auth/controller/auth_controller.dart';
import 'package:gazeta/theme/pallete.dart';

/// Widget for displaying a sign-in button with Google.
class SignInButton extends ConsumerWidget {
  /// Indicates whether the sign-in button is from the login screen.
  final bool isFromLogin;
  const SignInButton({super.key, this.isFromLogin = true});
  /// Function to handle sign-in with Google.
  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref
        .read(authControllerProvider.notifier)
        .signInWithGoogle(context, isFromLogin);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(context, ref),
        icon: Image.asset(
          Constants.googlePath,
          width: 35,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor:  Color(0xFFE4A839),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
