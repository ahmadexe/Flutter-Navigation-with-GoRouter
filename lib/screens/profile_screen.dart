import 'package:flutter/material.dart';
import 'package:gorouter_navigation/models/auth_data.dart';

class ProfileScreen extends StatelessWidget {
  final AuthData user;
  const ProfileScreen({required this.user,  super.key});

  @override
  Widget build(BuildContext context) {
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
