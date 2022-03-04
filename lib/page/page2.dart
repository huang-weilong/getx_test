import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/store/store.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('count = ${c.count}')),
            Obx(() => Text('count = ${c.simpleCount}')),
            ElevatedButton(
              child: const Text('count ++'),
              onPressed: () {
                c.increment();
              },
            ),
            ElevatedButton(
              child: const Text('SimpleCount ++'),
              onPressed: () {
                c.incrementSimple();
              },
            ),
            ElevatedButton(
              child: const Text('返回上一页'),
              onPressed: () {
                Get.back();
              },
            ),
            ElevatedButton(
              child: const Text('跳转page3'),
              onPressed: () {
                Get.to(() => const Page3());
              },
            ),
            // Text('接收的参数：' + (Get.arguments['title'] ?? '')),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3'),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Text('模拟登录页跳转'),
          const TextField(
            decoration: InputDecoration(hintText: '账号', prefixIcon: Icon(Icons.person_outline)),
          ),
          const TextField(
            decoration: InputDecoration(hintText: '密码', prefixIcon: Icon(Icons.lock_outline)),
          ),
          ElevatedButton(
            child: const Text('登录'),
            onPressed: () async {
              Get.offAllNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
