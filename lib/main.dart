import 'package:expenseapp/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: const Scaffold(
      body: HomeScreen(),
    ),
  ));
}
// modelleme

