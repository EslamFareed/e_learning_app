import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:flutter/material.dart';

class WelcomeHomeView extends StatelessWidget {
  const WelcomeHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: SizesScreen.width,
          child: Text(
            "Hello,",
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: SizesScreen.width,
          child: Text(
            "Omar El Slenkteh",
            style: TextStyle(
              fontFamily: "Rubik",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
