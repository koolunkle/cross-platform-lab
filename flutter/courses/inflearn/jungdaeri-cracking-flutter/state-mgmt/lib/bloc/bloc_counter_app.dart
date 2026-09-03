import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cracking_flutter/bloc/bloc_counter_home_page.dart';
import 'package:cracking_flutter/bloc/bloc_counter.dart';

class BlocCounterApp extends StatelessWidget {
  const BlocCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => BlocCounter(),
        child: BlocCounterHomePage(),
      ),
    );
  }
}
