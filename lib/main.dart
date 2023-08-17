import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_application_1/screens/screen3.dart';
import 'package:flutter_application_1/screens/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen4(),
    );
  }
}
