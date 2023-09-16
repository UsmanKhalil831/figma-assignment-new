import 'package:flutter/material.dart';

class ChickenScreen extends StatelessWidget {
  const ChickenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.pink,child: const Center(child: Text('Chicken Screen'),),)
    );
  }
}