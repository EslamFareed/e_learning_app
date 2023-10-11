import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:e_learning_app/views/home/components/ads_view.dart';
import 'package:e_learning_app/views/home/components/welcome_home_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              WelcomeHomeView(),
              AdsView(),
            ],
          ),
        ),
      ),
    );
  }
}
