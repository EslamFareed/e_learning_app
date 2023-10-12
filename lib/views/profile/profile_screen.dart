import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:e_learning_app/views/profile/components/item_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),
            ),
            ItemProfile(
              icon: Icons.settings,
              label: "Settings",
              onTap: () {},
            ),
            ItemProfile(
              icon: Icons.person,
              label: "Profile",
              onTap: () {},
            ),
            ItemProfile(
              icon: Icons.dashboard,
              label: "My Courses",
              onTap: () {},
            ),
            ItemProfile(
              icon: Icons.favorite,
              label: "Favourite Courses",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
