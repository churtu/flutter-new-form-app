import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<OnIncreaseByEvent>((event, emit) {
      emit(state.copyWith(
          counter: state.counter + event.value, transactionCount: state.transactionCount + 1));
    });
    on<OnReset>((event, emit) {
      emit(state.copyWith(counter: 0));
    });
  }
}
