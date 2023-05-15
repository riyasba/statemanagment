import 'package:flutter/material.dart';
import 'package:flutter_application_1/controlers.dart';
import 'package:flutter_application_1/secondscreen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => MyHomePage()),
      GetPage(name: '/secondscreen', page: ()=>secondscreeen())],
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });
  final controller = Get.put(counterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${controller.count}')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Add')),
              ElevatedButton(
                  onPressed: () => controller.decrement(),
                  child: Text('Subtract')),
              ElevatedButton(
                  onPressed: () => controller.reset(), child: Text('Reset'))
            ],
          ),
          ElevatedButton(
            onPressed: () => Get.showSnackbar(GetSnackBar(
              title: 'snackbar',
              message: 'this is a getx snackBar Demo',
              duration: Duration(seconds: 2),
              backgroundColor: Colors.orange.shade200,
              barBlur: 5,
            )),
            child: Text('Show Snackbar'),
          ),
          ElevatedButton(
              onPressed: () => Get.defaultDialog(
                  backgroundColor: Colors.white,
                  title: 'Getx  ',
                  middleText: 'this is a getx alert dialog demo',
                  textCancel: 'Cancel',
                  cancelTextColor: Colors.deepOrange),
              child: Text('alert box')),
          ElevatedButton(
              onPressed: () => Get.toNamed('/secondscreen'),
              child: Text('navigation'))
        ],
      ),
    );
  }
}
