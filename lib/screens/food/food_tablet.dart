import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';

class FoodTablet extends StatefulWidget {
  const FoodTablet({super.key});

  @override
  State<FoodTablet> createState() => _FoodTabletState();
}

class _FoodTabletState extends State<FoodTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      body: const Center(
        child: Text("Hello Food Tablet"),
      ),
    );
  }
}
