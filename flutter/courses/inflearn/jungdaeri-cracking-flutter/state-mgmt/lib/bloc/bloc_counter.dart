import 'package:flutter_bloc/flutter_bloc.dart';

sealed class BlocCounterEvent {}

final class CounterUpEvent extends BlocCounterEvent {}

final class CounterDownEvent extends BlocCounterEvent {}

class BlocCounterState {
  int count = 0;

  BlocCounterState({required this.count});

  BlocCounterState copyWith({int? count}) {
    return BlocCounterState(count: count ?? this.count);
  }
}

class BlocCounter extends Bloc<BlocCounterEvent, BlocCounterState> {
  BlocCounter() : super(BlocCounterState(count: 0)) {
    on<CounterUpEvent>(
      // (event, emit) => emit(BlocCounterState(count: state.count + 1)),
      (event, emit) => emit(state.copyWith(count: state.count + 1)),
    );

    on<CounterDownEvent>(
      // (event, emit) => emit(BlocCounterState(count: state.count - 1)),
      (event, emit) => emit(state.copyWith(count: state.count - 1)),
    );
  }
}
