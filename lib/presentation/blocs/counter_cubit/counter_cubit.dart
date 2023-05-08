import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  static final _initState = CounterCubitState(counter: 0, transactionCount: 0);
  CounterCubit() : super(_initState);

  void increaseBy(int value) {
    emit(state.copyWith(
        counter: state.counter + value,
        transactionCount: state.transactionCount + 1));
  }

  void reset() {
    emit(state.copyWith(
        counter: _initState.counter,
        transactionCount: _initState.transactionCount));
  }
}
