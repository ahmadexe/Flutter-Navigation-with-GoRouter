import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation/router/routes_constants.dart';

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
                router.pushNamed(profileRoute);
              },
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                router.pushNamed(aboutRoute);
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
