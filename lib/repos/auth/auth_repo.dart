import 'package:e_learning_app/repos/db/shared_pref/shared_helper.dart';
import 'package:e_learning_app/views/auth/login_screen.dart';
import 'package:e_learning_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';

class AuthRepo {
  bool? _getData() {
    return SharedHelper.getData("isLogin");
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
