import 'package:flutter/material.dart';
import 'package:cracking_flutter/provider/provider_counter_viewmodel.dart';
import 'package:provider/provider.dart';

class ProviderHomePage extends StatelessWidget {
  const ProviderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Counter App')),
      body: SafeArea(
        child: Center(
          child: Consumer<ProviderCounterViewmodel>(
            builder: (context, viewModel, child) {
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
