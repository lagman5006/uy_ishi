import 'package:flutter/material.dart';

class TestTasks extends StatelessWidget {
  const TestTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(text: TextSpan(
              text: "Flutter ",style: TextStyle(
              color: Colors.blue
            ),children: [
              TextSpan(text: "Widgets ",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.green)),
              TextSpan(text: "Tutorial ",style: TextStyle(decoration: TextDecoration.underline,color: Colors.red)),

            ]
            ))
          ],
        ),
      ),
    );
  }
}