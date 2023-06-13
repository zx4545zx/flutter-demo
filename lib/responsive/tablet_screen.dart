import 'package:flutter/material.dart';
import 'package:pos_system/router.dart';

import '../widgets/bottom_nav_widget.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
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
      body: pageRoutes[_selectedIndex]["tablet"],
    );
  }
}
