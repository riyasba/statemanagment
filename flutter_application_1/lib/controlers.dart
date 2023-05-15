import 'package:get/get.dart';

class counterController extends GetxController {
  final count = 0.obs;
  increment()=>count.value++;
  decrement()=>count.value--;
  reset()=>count.value=0;
}
