import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation/router/routes_constants.dart';
import 'package:gorouter_navigation/static/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                context.goNamed(profileRoute, extra: staticUser);
              },
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                router.goNamed(aboutRoute, pathParameters: {'id': '1'});
              },
              child: const Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                router.goNamed(contactRoute);
              },
              child: const Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
