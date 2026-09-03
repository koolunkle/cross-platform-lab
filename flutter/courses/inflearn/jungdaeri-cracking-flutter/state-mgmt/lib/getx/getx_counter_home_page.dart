import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cracking_flutter/getx/getx_counter_controller.dart';

class GetxCounterHomePage extends StatelessWidget {
  GetxCounterHomePage({super.key});

  final GetxCounterController controller = Get.put(GetxCounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Counter App')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Obx(
                () => Text(
                  'Counter.count: ${controller.count}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () => controller.countUp(),
                child: Text('카운트 증가'),
              ),
              ElevatedButton(
                onPressed: () => controller.countDown(),
                child: Text('카운트 감소'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
