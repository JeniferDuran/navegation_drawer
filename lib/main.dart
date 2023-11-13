import 'package:flutter/material.dart';
import 'package:navegation_drawer/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Progress Example',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Home(),
    );
  }
}
