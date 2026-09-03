import 'package:flutter/material.dart';
import 'package:cracking_flutter/getx/getx_counter_home_page.dart';

class GetxCounterApp extends StatelessWidget {
  const GetxCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxCounterHomePage(),
    );
  }
}
