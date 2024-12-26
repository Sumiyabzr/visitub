import 'package:flutter/material.dart';

class Affordable extends StatefulWidget {
  const Affordable({super.key});

  @override
  State<Affordable> createState() => _AffordableState();
}

class _AffordableState extends State<Affordable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('afford'),),
    );
  }
}