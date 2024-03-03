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
        //appBar: 상단에 넣을 위젯,
        //body: 중간에 넣을 위젯(필수),
        //bottomNavigationBar: 하단에 넣을 위젯,
          appBar: AppBar(
            title: Text('앱제목'),
            backgroundColor: Colors.blue,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          ),
          //Row(), Column() 가로세로배치
          body: Row(
            children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
            //mainAxisAlignment 간격조절 row:가로 column: 세로
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,   //start, center, end
          ),

          bottomNavigationBar: BottomAppBar(
              child:Container(
                  height: 50,
                  child: Row(
                      children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly
                  )
              )
          )


      ),

    );
  }

}
