import 'package:e_learning_app/components/navigator_helper.dart';
import 'package:e_learning_app/components/show_snack_bar.dart';
import 'package:e_learning_app/controllers/auth/auth_cubit.dart';
import 'package:e_learning_app/models/user_model.dart';
import 'package:e_learning_app/repos/main/main_repo.dart';
import 'package:e_learning_app/views/auth/components/default_text_field.dart';
import 'package:e_learning_app/views/auth/components/login_button.dart';
import 'package:e_learning_app/views/auth/login_screen.dart';
import 'package:e_learning_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 50),
              DefaultTextField(controller: nameController, label: "Name"),
              DefaultTextField(controller: emailController, label: "Email"),
              DefaultTextField(
                  controller: passwordController, label: "Password"),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is ErrorRegisterState) {
                    ShowSnackBar.showErrorMessage(
                        MainRepo.authRepo.errorMessage, context);
                  }
                  if (state is SuccessRegisterState) {
                    NavigatorHelper.off(context);
                  }
                },
                builder: (context, state) {
                  return state is LoadingRegisterState
                      ? const Center(child: CircularProgressIndicator())
                      : LoginButton(
                          label: "Create Account",
                          onPressed: () {
                            AuthCubit.get(context).register(
                              UserModel(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                              ),
                            );
                          },
                        );
                },
              ),
              MaterialButton(
                onPressed: () {
                  NavigatorHelper.off(context);
                },
                child: const Text("login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
