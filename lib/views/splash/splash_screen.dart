import 'package:e_learning_app/components/navigator_helper.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:e_learning_app/views/auth/login_screen.dart';
import 'package:e_learning_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavigatorHelper.toAndOff(MainRepo.authRepo.goToLoginOrMain(), context);
      },
    );

    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
