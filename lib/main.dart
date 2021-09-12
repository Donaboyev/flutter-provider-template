import 'package:flutter/material.dart';
import 'package:raywenderlich_provider/services/service_locator.dart';
import 'package:raywenderlich_provider/ui/views/calculate_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moola X',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: CalculateCurrencyScreen(),
    );
  }
}
