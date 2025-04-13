import 'package:flutter/material.dart';
import 'package:lang2/screens/homee.dart';

void main() {
  runApp(Tuko());
}

class Tuko extends StatelessWidget {
  const Tuko({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
