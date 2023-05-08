import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens.dart';

class HomeScreen extends StatelessWidget {
  static const routePath = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Cubits'),
            subtitle: const Text('Gestor de estado simple'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => context.push(CubitCounterScreen.routePath),
          ),
          ListTile(
            title: const Text('Bloc'),
            subtitle: const Text('Gestor de estado simple'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => context.push(BlocCounterScreen.routePath),
          )
        ],
      ),
    );
  }
}