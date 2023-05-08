import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/presentation/blocs/counter_cubit/counter_cubit.dart';

import '../../config/theme/app_theme.dart';

class CubitCounterScreen extends StatelessWidget {
  static const routePath = '/cubits';
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: _Scaffold(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterCubit = context.watch<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit counter: ${counterCubit.state.transactionCount}'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterCubit, CounterCubitState>(
              builder: (context, state) {
                return Text('Counter value: ${state.counter}');
              },
            ),
            MaterialButton(
                color: AppTheme.primaryColor,
                onPressed: () => counterCubit.reset(),
                shape: const StadiumBorder(),
                child:
                    const Text('Reset', style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1,
              child: const Text('+1'),
              onPressed: () => counterCubit.increaseBy(1)),
          const SizedBox(height: 4),
          FloatingActionButton(
              heroTag: 2,
              child: const Text('+2'),
              onPressed: () => counterCubit.increaseBy(2)),
          const SizedBox(height: 4),
          FloatingActionButton(
              heroTag: 3,
              child: const Text('+3'),
              onPressed: () => counterCubit.increaseBy(3)),
        ],
      ),
    );
  }
}
