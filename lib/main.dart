
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                // flexible:비율로 폭 설정
                Flexible(child: Container(color: Colors.blue), flex: 1,),
                Flexible(child: Container(color: Colors.green), flex: 1,)
              ],
            )


        )

    );




  }
}
