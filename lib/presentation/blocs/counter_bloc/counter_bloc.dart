import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<OnIncreaseByEvent>(_onIncreaseByEvent);
    on<OnResetEvent>(_onResetEvent);
  }

  void _onIncreaseByEvent(OnIncreaseByEvent event, Emitter emit) {
    emit(state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1));
  }

  void _onResetEvent(OnResetEvent event, Emitter emit) {
    emit(state.copyWith(counter: 0));
  }
}
