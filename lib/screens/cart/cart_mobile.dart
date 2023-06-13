import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';

class CartMobile extends StatefulWidget {
  const CartMobile({super.key});

  @override
  State<CartMobile> createState() => _CartMobileState();
}

class _CartMobileState extends State<CartMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Cart Page',
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
                Text("Hello Cart Mobile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
