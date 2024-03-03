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
        //title: 왼쪽 타이틀, leading: 왼쪽 아이콘, actions: 오른쪽 아이콘
        appBar: AppBar( title: Text('앱임'), leading: Icon(Icons.star), actions: [Icon(Icons.star)],),
        body: SizedBox(
          //글자디자인
          //child: Text('안녕!', style: TextStyle( color: Color(0xffcb4242), fontSize: 30, fontWeight: FontWeight.w700),
          //버튼디자인
          //child: ElevatedButton( child: Text('글자'),  onPressed: (){}, style: ButtonStyle())
          //아이콘 버튼 디자인
            child: IconButton( icon: Icon(Icons.star),  onPressed: (){}, style: ButtonStyle())
        ),
      ),
    );

  }
}
