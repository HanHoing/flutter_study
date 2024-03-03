
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless(StatelessWidget) =>=>  StatefulWidget 변경 가능
//** class 대신 변수 함수도 가능! 대신 재렌더링 필요 없는 애들만
// 나머지는 stateful, stateless 로 만들어야 성능 저하 없음
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김태현', '김민주', '김아영'];
  var like = [0, 0, 0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,),
        body: ListView.builder(
          itemCount: name.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Text(like[i].toString()),
                title: Text(name[i]),
                trailing: ElevatedButton(
                    child: Text('좋아요'),
                    onPressed: (){
                      setState(() {
                        like[i] ++;
                      });
                    },)
              );
            }),
      ),
    );
  }
}




//StatefulWidget 만들기 : stful
//state 뵨굥시 자동으로 재렌더링 됨
class TestStful extends StatefulWidget {
  const TestStful({super.key});
  @override
  _State createState() => _State();
}

class _State extends State {
  var a = 1;  // 변수 만들기
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}







