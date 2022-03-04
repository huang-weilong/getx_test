import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('language'.tr),
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xfff3f3f3),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text('Chinese'.tr),
              trailing: Get.locale == const Locale('zh', 'CN') ? const Icon(Icons.check, color: Colors.blue) : null,
              onTap: () {
                var locale = const Locale('zh', 'CN');
                Get.updateLocale(locale);
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 1.0),
            color: Colors.white,
            child: ListTile(
              title: Text('English'.tr),
              trailing: Get.locale == const Locale('en', 'US') ? const Icon(Icons.check, color: Colors.blue) : null,
              onTap: () {
                var locale = const Locale('en', 'US');
                Get.updateLocale(locale);
              },
            ),
          )
        ],
      ),
    );
  }
}
