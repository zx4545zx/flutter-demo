import 'package:flutter/material.dart';
import 'package:pos_system/const.dart';
import 'package:pos_system/providers/couter_provider.dart';
import 'package:provider/provider.dart';

class FoodMobile extends StatefulWidget {
  const FoodMobile({super.key});

  @override
  State<FoodMobile> createState() => _FoodMobileState();
}

class _FoodMobileState extends State<FoodMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rootBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'Food Page',
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
                const Text("Hello Food Mobile"),
                const SizedBox(
                  height: 8,
                ),
                Text(
                    "counter provider : ${context.watch<CouterProvider>().counter}"),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          context.read<CouterProvider>().decrementCounter(),
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<CouterProvider>().resetCounter(),
                      child: const Icon(Icons.exposure_zero),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<CouterProvider>().incrementCounter(),
                      child: const Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
