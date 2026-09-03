import 'package:flutter/material.dart';
import 'package:cracking_flutter/change_notifier/change_notifier_home_page.dart';

class ChangeNotifierApp extends StatelessWidget {
  const ChangeNotifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierHomePage(),
    );
  }
}
