import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/lang/lang.dart';
import 'package:getx_test/route/routes.dart';
import 'package:getx_test/store/store.dart';

void main() {
  initGetController();
  // 如果只使用 Get 进行状态管理或依赖管理，则无需使用 GetMaterialApp。
  // GetMaterialApp 是路由、snackbars、国际化、bottomSheets、对话框和与路由和缺少上下文相关的高级 API 所必需的。
  runApp(
    GetMaterialApp(
      theme: ThemeData.from(colorScheme: const ColorScheme.light(primary: Color(0xff3389ff))),
      translations: Language(),
      locale: const Locale('zh', 'CN'),
      // locale: Get.deviceLocale, // 使用系统语言设置
      initialRoute: '/',
      // home: const MyHomePage(),
      unknownRoute: Routes.notFoundPage,
      getPages: Routes.getPages,
    ),
  );
}

void initGetController() {
  Get.put(CounterController());
  Get.put(ThemesController());
}
