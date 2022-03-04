import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/store/store.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting'.tr),
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xfff3f3f3),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text('language'.tr),
              onTap: () {
                Get.toNamed('/language');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 1.0),
            color: Colors.white,
            child: ListTile(
              title: Text('theme'.tr),
              onTap: () {
                Get.toNamed('/theme');
              },
            ),
          ),
        ],
      ),
    );
  }
}
