import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';

class ZoneMobile extends StatefulWidget {
  const ZoneMobile({super.key});

  @override
  State<ZoneMobile> createState() => _ZoneMobileState();
}

class _ZoneMobileState extends State<ZoneMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Zone Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text("Hello Zone Mobile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
