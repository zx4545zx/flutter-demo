import 'package:flutter/material.dart';
import 'package:pos_system/providers/couter_provider.dart';
import 'package:pos_system/responsive/mobile_screen.dart';
import 'package:pos_system/responsive/responsive_layout.dart';
import 'package:pos_system/responsive/tablet_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => CouterProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScreen(),
        tabletScaffold: TabletScreen(),
      ),
    );
  }
}
