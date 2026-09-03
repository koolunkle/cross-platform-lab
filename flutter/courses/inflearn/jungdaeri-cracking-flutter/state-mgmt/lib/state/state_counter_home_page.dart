import 'package:flutter/material.dart';

class StateCounterHomePage extends StatefulWidget {
  const StateCounterHomePage({super.key});

  @override
  State<StateCounterHomePage> createState() => _StateCounterHomePageState();
}

class _StateCounterHomePageState extends State<StateCounterHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('State Counter App')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text(
                'Counter.count: $count',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () => setState(() => count++),
                child: Text('카운트 증가'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => count--),
                child: Text('카운트 감소'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
