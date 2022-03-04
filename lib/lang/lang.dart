import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'language': 'Language',
          'English': 'English',
          'Chinese': 'Chinese',
          'setting': 'Setting',
          'theme': 'Theme',
        },
        'zh_CN': {
          'hello': '你好',
          'language': '设置语言',
          'English': '英语',
          'Chinese': '中文',
          'setting': '设置',
          'theme': '设置主题',
        }
      };
}
