// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widget_class/class_3/main_page.dart';
import 'package:widget_class/widget/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}