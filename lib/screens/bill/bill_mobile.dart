import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';
import 'package:pos_system/providers/couter_provider.dart';
import 'package:provider/provider.dart';

class BillMobile extends StatefulWidget {
  const BillMobile({super.key});

  @override
  State<BillMobile> createState() => _BillMobileState();
}

class _BillMobileState extends State<BillMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Bill Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const Text("Hello Bill Mobile"),
                Text(
                    "counter provider : ${context.watch<CouterProvider>().counter}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
