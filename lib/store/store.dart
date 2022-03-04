import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 业务逻辑类 将所有变量、方法和控制器放入其中。
class CounterController extends GetxController {
  // 您可以使用简单的“.obs”使任何变量可观察
  var count = 0.obs;
  var simpleCount = 0.obs;
  void increment() {
    count++;
  }

  void incrementSimple() {
    simpleCount++;
    update();
  }
}

class ThemesController extends GetxController {
  var currentTheme = 0.obs;

  List<Color> themesColor = const [
    Color(0xff3389ff),
    Color(0xff6a8a62),
    Color(0xffec905d),
    Color(0xffe766b8),
    Color(0xff5b5b5b),
  ];

  void setCurrentTheme(int c) {
    currentTheme.value = c;
  }
}
