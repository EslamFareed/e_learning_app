import 'package:e_learning_app/controllers/auth/auth_cubit.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key, required this.onPressed, required this.label});
  void Function() onPressed;

  String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: MediaQuery.sizeOf(context).width - 40,
      color: Colors.deepOrange,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
