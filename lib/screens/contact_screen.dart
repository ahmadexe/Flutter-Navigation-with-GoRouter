import 'package:flutter/material.dart';

class  ContactScreen extends StatelessWidget {
  const ContactScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Contact Screen'),
      ),
    );
  }
}