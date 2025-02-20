import 'package:flutter/material.dart';
import 'AgriScanHomeScreen.dart'; // Import your home screen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: AgriScanHomeScreen(), // Set the home page as AgriScanHomeScreen
    );
  }
}
