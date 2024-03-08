/**
 * ThemeData : 위젯들 스타일 한 번에 정의
 * Q. 스타일 중복시
 * A. 물리적으로 가까운 스타일 먼저 적용
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          theme : ThemeData(
            iconTheme: IconThemeData(color: Colors.yellow, size: 60),
            appBarTheme: AppBarTheme(
              color: Colors.blue,
            )
          ),
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