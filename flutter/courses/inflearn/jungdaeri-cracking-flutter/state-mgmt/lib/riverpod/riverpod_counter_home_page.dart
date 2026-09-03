import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cracking_flutter/riverpod/riverpod_counter_notifier.dart';

final riverpodCounterProvider =
    // NotifierProvider<RiverpodCounterNotifier, CounterState>(() =>  RiverpodCounterNotifier());
    NotifierProvider<RiverpodCounterNotifier, CounterState>(
      RiverpodCounterNotifier.new,
    );

class RiverpodCounterHomePage extends ConsumerWidget {
  const RiverpodCounterHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Counter App')),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              ConsumerCounterText(),
              ElevatedButton(
                onPressed: () => ref
                    .read<RiverpodCounterNotifier>(
                      riverpodCounterProvider.notifier,
                    )
                    .countUp(),
                child: Text('카운트 증가'),
              ),
              ElevatedButton(
                onPressed: () => ref
                    .read<RiverpodCounterNotifier>(
                      riverpodCounterProvider.notifier,
                    )
                    .countDown(),
                child: Text('카운트 감소'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsumerCounterText extends ConsumerWidget {
  const ConsumerCounterText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      'Counter.count: ${ref.watch<CounterState>(riverpodCounterProvider).count}',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
