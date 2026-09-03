import 'package:flutter/material.dart';
import 'package:cracking_flutter/change_notifier/change_notifier_counter_viewmodel.dart';

class ChangeNotifierHomePage extends StatelessWidget {
  ChangeNotifierHomePage({super.key});

  final viewModel = ChangeNotifierCounterViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Notifier Counter App')),
      body: SafeArea(
        child: Center(
          child: ListenableBuilder(
            listenable: viewModel,
            builder: (context, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  Text(
                    'Counter.count: ${viewModel.count}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: () => viewModel.countUp(),
                    child: Text('카운트 증가'),
                  ),
                  ElevatedButton(
                    onPressed: () => viewModel.countDown(),
                    child: Text('카운트 감소'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
