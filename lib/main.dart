import 'package:flutter/material.dart';
import 'package:responsive_ui_chizish/checkout.dart';
import 'package:responsive_ui_chizish/widgets/test.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TestTasks());
  }
}
