import 'package:get/get.dart';
import 'package:getx_test/404page.dart';
import 'package:getx_test/page/home_page.dart';
import 'package:getx_test/page/language_page.dart';
import 'package:getx_test/page/page2.dart';
import 'package:getx_test/page/setting_page.dart';
import 'package:getx_test/page/theme_page.dart';

// 路由管理
class Routes {
  static final GetPage notFoundPage = GetPage(name: '/notFoundPage', page: () => const NotFoundPage());

  static final List<GetPage> getPages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/setting',
      page: () => const SettingPage(),
    ),
    GetPage(
      name: '/language',
      page: () => const LanguagePage(),
    ),
    GetPage(
      name: '/theme',
      page: () => const ThemePage(),
    ),
    GetPage(
      name: '/page2',
      page: () => const Page2(),
    ),
  ];
}
