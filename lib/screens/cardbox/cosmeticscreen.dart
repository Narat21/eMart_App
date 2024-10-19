import 'package:flutter/material.dart';

class Cosmeticscreen extends StatefulWidget {
  const Cosmeticscreen({super.key});

  @override
  State<Cosmeticscreen> createState() => _CosmeticscreenState();
}

class _CosmeticscreenState extends State<Cosmeticscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cosmetic'),
      ),
      body: ListView(),
    );
  }
}
