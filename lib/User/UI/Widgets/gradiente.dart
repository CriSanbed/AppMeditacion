import 'package:flutter/material.dart';

class Gradiente extends StatelessWidget {
  const Gradiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepOrangeAccent, Colors.white],
          )),
    );
  }
}