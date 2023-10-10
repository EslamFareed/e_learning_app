import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:e_learning_app/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
