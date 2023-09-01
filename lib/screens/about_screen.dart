import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final int id;
  const AboutScreen({required this.id ,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('About Screen'),
            Text(id.toString())
          ],
        ),
      ),
    );
  }
}