import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/model/models.dart';

// 业务逻辑类 将所有变量、方法和控制器放入其中。
class CounterController extends GetxController {
  // 您可以使用简单的“.obs”使任何变量可观察
  var count = 0.obs;
  var simpleCount = 0.obs;
  Rx<Basic> basic = Basic(name: 'long', age: 18).obs;
  Rx<List<Basic>> basicList = RxList<Basic>().obs;

  void increment() {
    count++;
  }

  void incrementSimple() {
    simpleCount++;
    update();
  }

  void updateBasic(String name, int age) {
    // 方法1:
    // basic.value.name = name;
    // basic.value.age = age;
    // basic.refresh();

    // 方法2
    basic.update((val) {
      // 1
      basic = Rx(Basic.fromJson({'name': name, 'age': age}));
      // 2
      // basic.value.name = name;
      // basic.value.age = age;
    });

    // 方法3
    // basic(Basic(name: a));
  }

  void updateBasicList(List<Map<String, dynamic>> list) {
    basicList.value.clear();
    basicList.update((val) {
      for (int i = 0; i < 3; i++) {
        basicList.value.add(Basic.fromJson(list[i]));
      }
    });
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
