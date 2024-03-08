import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

//main
void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

//myApp
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//MyAppState
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,),
      body: MaterialApp(
        //TextField 스타일 옵션
        home: Column(
          children: const [
            //1. 기본 border style
            // enabledBorder: border 지정
            TextField( decoration: InputDecoration(
                          icon: Icon(Icons.star),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.0,
                            )
                          )
                      ))
            //2. border Style
            , TextField( decoration: InputDecoration(
                            prefixIcon  : Icon(Icons.star),
                            // OutlineInputBorder: 상하좌우 테주리
                            // UnderlineInputBorder: 하단 테두리
                            // InputBorder.none: 테두리 없애기
                            enabledBorder: OutlineInputBorder()
                        ))
            //3. border 모서리 style
            , TextField( decoration: InputDecoration(
                            suffixIcon: Icon(Icons.star),
                            enabledBorder: OutlineInputBorder(
                              //borderRadius: 테두리 둥글게
                              borderRadius:  BorderRadius.all(Radius.circular(30)),
                            ),
                        ))
            //4. border, back ground Color 없애기
            , TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )
              ),
            )
            //5. 힌트 띄우기
            , TextField(
              decoration: InputDecoration(
                hintText: 'hint',
                helperText: 'helper',
                labelText: 'label',
                counterText: 'counter',
                hintStyle: TextStyle(color: Colors.green),  //hint style 설정
              ),
            )
          ]
        ),
      )
    );

  }
}
