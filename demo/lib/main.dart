import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          body: Row(children: [
            Container(
                height: 200,
                width: 100,
                color: Colors.red,
                child: Text('I am in the red container')),
            Container(height: 200, width: 30, color: Colors.purple)
          ])),
    );
  }
}
