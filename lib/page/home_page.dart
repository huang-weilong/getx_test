import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/model/models.dart';
import 'package:getx_test/store/store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const Map languageMap = {'zh_CN': '中文', 'en_US': 'English'};

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('get插件的使用'),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('计数器例子', style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
            // 响应式状态管理
            Obx(() => Text('响应式状态管理：count = ${c.count.value}')),
            ElevatedButton(
              onPressed: () => c.increment(),
              child: const Text('count++'),
            ),
            // 简单状态管理，逻辑层需要update才会生效
            GetBuilder<CounterController>(
              // init: counter,
              builder: (controller) {
                return Text("简单状态管理，逻辑层需要update才会生效\nSimpleCount的值为：${c.simpleCount}");
              },
              initState: (controller) {},
              dispose: (controller) {},
            ),
            ElevatedButton(
              onPressed: () => c.incrementSimple(),
              child: const Text('SimpleCount++'),
            ),
            const Text('路由跳转', style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
            ElevatedButton(
              onPressed: () {
                // Get.to(const Page2());
                Get.toNamed('/page2', arguments: {'title': 'page2'});
              },
              child: const Text('跳转page2'),
            ),
            const Text('对象更新', style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
            Obx(() => Text(c.basic.value.name ?? '')),
            Obx(() => Text(c.basic().name ?? '')),
            Obx(() => Text(c.basic.value.age.toString())),
            ElevatedButton(
              onPressed: () {
                c.updateBasic('张三', 25);
              },
              child: const Text('更新数据'),
            ),
            const Text('对象列表更新', style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
            Obx(
              () => Column(
                children: c.basicList.value.map((e) => Text(e.name! + e.age.toString() + '岁')).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                List<Map<String, dynamic>> list = [
                  {'name': '张三', 'age': 19},
                  {'name': '李四', 'age': 21},
                  {'name': '王五', 'age': 26},
                ];
                c.updateBasicList(list);
              },
              child: const Text('更新数据'),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('当前语言: ${languageMap[Get.locale.toString()]}'),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(const Page2());
                Get.toNamed('/page2', arguments: {'title': 'page2'});
              },
              child: const Text('跳转page2'),
            ),
          ],
        ),
      ),
    );
  }
}
