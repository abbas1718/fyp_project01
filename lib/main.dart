import 'package:flutter/material.dart';
import 'package:fyp_project/screens/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digi Forest',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:   const NaviagtionScreen(),
    );
  }
}


