import 'package:flutter/material.dart';
import 'package:form_app/config/router/app_router.dart';
import 'package:form_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.primary,
      routerConfig: appRouter,
    );
  }
}