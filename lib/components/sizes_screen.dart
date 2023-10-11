import 'package:flutter/material.dart';

class SizesScreen {
  static late double width;
  static late double height;

  static void makeSizes(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
