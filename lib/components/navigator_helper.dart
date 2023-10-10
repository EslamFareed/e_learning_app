import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class NavigatorHelper {
  static toAndOff(Widget screen, BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: screen,
        type: PageTransitionType.leftToRightWithFade,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  static to(Widget screen, BuildContext context) {
    Navigator.push(
      context,
      PageTransition(
        child: screen,
        type: PageTransitionType.leftToRightWithFade,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  static toAndOffAll(Widget screen, BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        child: screen,
        type: PageTransitionType.leftToRightWithFade,
        duration: const Duration(seconds: 1),
      ),
      (route) {
        return false;
      },
    );
  }

  static off(BuildContext context) {
    Navigator.pop(context);
  }
}
