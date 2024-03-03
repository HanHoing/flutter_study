
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
        home: Scaffold(
            appBar: AppBar(
              shape: Border( bottom:  BorderSide(
                color:  Colors.grey,
                width: 1,
              )
              ),
            ) ,
            body: Row(
              children: [
                // flexible: 비율로 폭 설정
                //Flexible(child: Container(color: Colors.blue), flex: 1,),
                //Flexible(child: Container(color: Colors.green), flex: 1,)
                //Expanded: 하나의 박스만 가로폭 꽉 채우기
                Expanded( child: Container(color: Colors.blue), flex:1),
                Container( color: Colors.green, width:200),
              ],
            )


        )

    );




  }
}
