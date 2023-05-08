import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  static const routePath = '/bloc';
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: _Scaffold(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('Bloc counter ${state.transactionCount}');
          },
        ),
        actions: [
          IconButton(
              onPressed: () => counterBloc.add(OnResetEvent()),
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text('Bloc value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1,
              child: const Text('+1'),
              onPressed: () => counterBloc.add(OnIncreaseByEvent(1))),
          const SizedBox(height: 4),
          FloatingActionButton(
              heroTag: 2,
              child: const Text('+2'),
              onPressed: () => counterBloc.add(OnIncreaseByEvent(2))),
          const SizedBox(height: 4),
          FloatingActionButton(
              heroTag: 3,
              child: const Text('+3'),
              onPressed: () => counterBloc.add(OnIncreaseByEvent(3))),
        ],
      ),
    );
  }
}
