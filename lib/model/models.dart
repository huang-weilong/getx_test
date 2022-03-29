import 'package:get/get.dart';

class Basic extends GetxController {
  String? name; // 地区/城市ID
  int? age; // 地区/城市名称

  Basic({
    this.name,
    this.age,
  });

  Basic.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}
