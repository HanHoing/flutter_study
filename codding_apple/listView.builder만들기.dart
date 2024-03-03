
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

//stless
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  //변수 선언
  @override
  Widget build(BuildContext context) {
  var a = 1;
    return MaterialApp (
      home: Scaffold(
        appBar: AppBar( title: Text('앱만들기이', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue),
        bottomNavigationBar: BottomAppBar(),
          // ListView: 무한 스크롤
          // ListView.builder(itemCount: 20, itemBuilder: (context, i){return}) : 동적 리스트 추가
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i){
              return Padding(padding: EdgeInsets.all(5), child:ListTile(
              leading: Image.asset( "IMG_1256.JPG", ),
              title: Text('스폰지밥'),
              )
            );
          }
        ),
        //FloatingActionButton : 공중에 뜬 버튼
        floatingActionButton: FloatingActionButton(
          child : Text(a.toString()),
          onPressed: (){ a++; },
      ),

      )
    );
  }
}

// Custom widget
// 변하지 않는 UI들은 변수 함수로 축약해도 노상관
class BottomAppBar extends StatelessWidget {
  const BottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 100,
        child: Row(
            children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly
        )
    );

  }
}




