part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class OnIncreaseByEvent extends CounterEvent {
  final int value;
  OnIncreaseByEvent(this.value);
}

class OnResetEvent extends CounterEvent {}
