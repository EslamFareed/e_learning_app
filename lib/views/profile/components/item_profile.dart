import 'package:e_learning_app/components/sizes_screen.dart';
import 'package:flutter/material.dart';

class ItemProfile extends StatelessWidget {
  ItemProfile({super.key, required this.icon, required this.label, this.onTap});

  void Function()? onTap;
  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizesScreen.width,
      height: 50,
      margin: const EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[350]!),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          size: 16,
        ),
        title: Text(label),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    );
  }
}
