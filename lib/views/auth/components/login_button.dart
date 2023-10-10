import 'package:e_learning_app/controllers/auth/auth_cubit.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key, required this.onPressed});
  void Function() onPressed;
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
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
