import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double y = getScreenWidth() / pixels;
    return getScreenWidth() / y;
  }
}
