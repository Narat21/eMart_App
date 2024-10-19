import 'package:flutter/material.dart';

class Restur extends StatefulWidget {
  const Restur({super.key});

  @override
  State<Restur> createState() => _ResturState();
}

class _ResturState extends State<Restur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resturants'),
      ),
      body: ListView(),
    );
  }
}
