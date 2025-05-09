import 'package:flutter/material.dart';
import 'package:flutter_morte_s/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}