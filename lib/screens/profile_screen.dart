import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_navigation/models/auth_data.dart';

class ProfileScreen extends StatelessWidget {
  final GoRouterState state;
  const ProfileScreen({required this.state,  super.key});

  @override
  Widget build(BuildContext context) {
    final user = state.extra as AuthData;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Profile Screen'),
            Text(user.name),
            Image.network(user.imageUrl),
          ],
        ),
      ),
    );
  }
}
