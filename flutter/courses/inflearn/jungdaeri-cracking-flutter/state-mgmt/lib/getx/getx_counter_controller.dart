import 'package:get/get.dart';

class GetxCounterController extends GetxController {
  var count = 0.obs;

  void countUp() {
    count++;
  }

  void countDown() {
    count--;
  }
}
