import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      body: const Center(
        child: Text("Hello Home Tablet"),
      ),
    );
  }
}
