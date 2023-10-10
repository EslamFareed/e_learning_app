import 'package:e_learning_app/repos/db/shared_pref/shared_helper.dart';
import 'package:e_learning_app/repos/db/shared_pref/shared_keys.dart';
import 'package:e_learning_app/views/auth/login_screen.dart';
import 'package:e_learning_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final auth = FirebaseAuth.instance;

  String errorMessage = '';

  Future<void> saveLoginOffline() async {
    await SharedHelper.setData(SharedKeys.isLogin.name, true);
  }

  Future<User?> login(String email, String pass) async {
    User? user;
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((value) async {
        if (value.user != null) {
          await saveLoginOffline();
          user = value.user;
        }
      });
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message!;
    }

    return user;
    // await auth
    //     .signInWithEmailAndPassword(email: email, password: pass)
    //     .then((value) {
    //   if (value.user != null) {
    //     return value.user;
    //   }
    // }).catchError((dynamic error) {
    //   print("-------------------------------");
    //   print(error.message);
    //   print("-------------------------------");
    // });
  }

  bool? _getData() {
    return SharedHelper.getData(SharedKeys.isLogin.name);
  }

  bool _checkIsFirstTime() {
    if (_getData() == null) {
      return true;
    } else {
      return false;
    }
  }

  bool _checkIsLogin() {
    if (_getData()!) {
      return true;
    } else {
      return false;
    }
  }

  Widget goToLoginOrMain() {
    return _checkIsFirstTime()
        ? LoginScreen()
        : _checkIsLogin()
            ? MainScreen()
            : LoginScreen();
  }
}
