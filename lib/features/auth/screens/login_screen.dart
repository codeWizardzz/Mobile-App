import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gazeta/core/common/loader.dart';
import 'package:gazeta/core/common/sign_in_button.dart';
import 'package:gazeta/core/common/sign_in_us_guest.dart';
import 'package:gazeta/core/constants/constants.dart';
import 'package:gazeta/features/auth/controller/auth_controller.dart';
import 'package:gazeta/responsive/responsive.dart';

//login screen is built here
class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset(
          Constants.logoPath,
          height: 95,
          width: 400,
        ),
      ),
      body: isLoading
          ? const Loader()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    // Constants.loginEmotePath,
                    Constants.signuppath,
                    height: 400,
                  ),
                ),
                const SizedBox(height: 20),
                const Responsive(child: SignInButton()),
                const SizedBox(height: 8),
                const Responsive(child: SignInAsGuest()),
              ],
            ),
    );
  }
}
