import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cracking_flutter/bloc/bloc_counter.dart';

class BlocCounterHomePage extends StatelessWidget {
  const BlocCounterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Counter App')),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<BlocCounter, BlocCounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  Text(
                    'Counter.count: ${state.count}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<BlocCounter>().add(CounterUpEvent()),
                    child: Text('카운트 증가'),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<BlocCounter>().add(CounterDownEvent()),
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
