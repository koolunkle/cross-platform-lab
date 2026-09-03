import 'package:flutter/material.dart';
import 'package:cracking_flutter/provider/provider_home_page.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderHomePage(),
    );
  }
}
