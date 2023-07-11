import 'package:flutter/material.dart';
import 'package:multi_widget_app/config/router/app_router.dart';
import 'package:multi_widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Multi-Widget App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      routerConfig: appRouter,
    );
  }
}
