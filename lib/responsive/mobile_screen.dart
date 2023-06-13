import 'package:flutter/material.dart';
import 'package:pos_system/router.dart';
import 'package:pos_system/widgets/bottom_nav_widget.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _selectedIndex = 0;

  void nevigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(
        onTabChange: (index) => nevigateBottombar(index),
      ),
      body: pageRoutes[_selectedIndex]["mobile"],
    );
  }
}
