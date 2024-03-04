
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
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
  @override
  Widget build(BuildContext context) {
    //context는 BuildContext context 생성됨.
    //MaterialApp 생선된곳 밖으로 빼야 context에 부모로 들어가서 모달 팝업이 정상 작동할 수 있음!!!
    //  OR 정말 급한경우 Builder 사용
    //return MaterialApp(   :  main으로 빼기
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('버튼'),
          onPressed: (){
            //모달 팝업 생성
            showDialog(
                context: context,
                //builder: return 함수 넣기
                builder: (context){
                  return DialogUI();
                }
            );
          },
        ),
      );
    //);
  }
}

//DialogUI 커스텀 위젯
class DialogUI extends StatefulWidget {
  const DialogUI({super.key});

  @override
  State<DialogUI> createState() => _DialogUIState();
}

class _DialogUIState extends State<DialogUI> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children : [
            Text('AlertDialog'),
            TextField(
              decoration:InputDecoration(hintText: '입력하세요.'),
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                  }, child: Text('완료')),
                  ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('취소'))
                ]
            )
          ]

      ),
    );
  }
}
