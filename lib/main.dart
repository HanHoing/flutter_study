import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          theme : ThemeData(),
          home : MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold();

  }
}