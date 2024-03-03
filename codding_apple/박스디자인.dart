import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    // Material Design: 구글스러움, Cupertino: 아이폰같음
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar( title: Text('앱임')),
            body: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                //double.infinity: 무한
                width: double.infinity, height: 250, color: Colors.blue,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: EdgeInsets.all(20),
                child: Text('모우야'),
                //decoration: 나머지 찌끄레기설정들 넣기
                //decoration: BoxDecoration(
                //border: Border.all(color: Colors.black),
                //),
              ),
            )

        )

    );

  }
}
