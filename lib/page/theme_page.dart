import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/store/store.dart';

// 使用GetView
class ThemePage extends GetView<ThemesController> {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ThemesController t = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('theme'.tr),
        elevation: 0.0,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 4,
        shrinkWrap: true,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 30.0,
        children: [
          ...controller.themesColor
              .map(
                (e) => GestureDetector(
                  child: Obx(
                    () => Container(
                      height: 50.0,
                      width: 50.0,
                      color: e,
                      child: controller.currentTheme.value == controller.themesColor.indexOf(e)
                          ? const Icon(Icons.check, color: Colors.white)
                          : null,
                    ),
                  ),
                  onTap: () {
                    Get.changeTheme(ThemeData.from(colorScheme: ColorScheme.light(primary: e)));
                    controller.setCurrentTheme(controller.themesColor.indexOf(e));
                  },
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
