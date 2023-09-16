import 'package:flutter/material.dart';

class FruitScreen extends StatelessWidget {
  const FruitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(color: Colors.red,child:const Center(child:Text('Fruit screen')),)
    );
  }
}