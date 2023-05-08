
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: HomeScreen.routePath, builder: (context, state) => const HomeScreen()),
    GoRoute(path: CubitCounterScreen.routePath, builder: (context, state) => const CubitCounterScreen()),
    GoRoute(path: BlocCounterScreen.routePath, builder: (context, state) => const BlocCounterScreen())
  ]);
