// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:results_summary_component/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Results Summary Component',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffECF2FF)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
