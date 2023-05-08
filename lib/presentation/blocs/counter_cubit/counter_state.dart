part of 'counter_cubit.dart';

class CounterCubitState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterCubitState({required this.counter, required this.transactionCount});

  CounterCubitState copyWith({int? counter, int? transactionCount}) => CounterCubitState(
      counter: counter ?? this.counter,
      transactionCount: transactionCount ?? this.transactionCount);
      
        @override
        List<Object?> get props => [counter, transactionCount];
}
