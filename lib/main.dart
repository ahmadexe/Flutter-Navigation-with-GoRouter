import 'package:flutter/material.dart';
import 'package:gorouter_navigation/router/router_config.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterConfigration(isAuthenticated: false).getRouter(),
    );
  }
}