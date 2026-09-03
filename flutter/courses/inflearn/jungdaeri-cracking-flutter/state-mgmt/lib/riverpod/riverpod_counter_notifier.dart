import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterState {
  int count = 0;

  CounterState({required this.count});

  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}

class RiverpodCounterNotifier extends Notifier<CounterState> {
  void countUp() {
    // state = CounterState(count: state.count += 1);
    state = state.copyWith(count: state.count + 1);
  }

  void countDown() {
    // state = CounterState(count: state.count -= 1);
    state = state.copyWith(count: state.count -1);
  }

  @override
  CounterState build() => CounterState(count: 0);
}
