import 'package:flutter/material.dart';

class Tea extends StatelessWidget {
  const Tea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.purple,child:const Center(child:Text('Tea screen')),)
    );
  }
}