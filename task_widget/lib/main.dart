// ignore_for_file: unused_import

import 'package:praktikum_widget/ui/dashboard.dart';
import 'package:flutter/material.dart';

// ignore: duplicate_import
import 'ui/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}