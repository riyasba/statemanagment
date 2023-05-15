import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class secondscreeen extends StatelessWidget {
  const secondscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Get.back(),
            child: Text('navigation back'),
          )
        ],
      ),
    );
  }
}
