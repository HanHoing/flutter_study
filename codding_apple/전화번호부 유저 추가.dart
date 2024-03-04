
import 'package:flutter/material.dart';

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
  var total = 1;
  var name = ['이름1', '이름2', '이름3'];
  var like = [0, 0, 0];

  // 더하기 함수
  onAdd() {
    setState(() {
      total++;
    });
  }

  // 친구 추가 함수
  onAddFriend(var val) {
    setState(() {
      name.add(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigoAccent,),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (a, i){
            return ListTile(
              leading: Image.asset('IMG_1256.JPG'),
              title: Text(name[i]),
              contentPadding: EdgeInsets.all(5),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Text(total.toString()),
        onPressed: (){
          showDialog(
              context: context,
              builder: (context){
                //부모 -> 자식 state 전송 ( 작명: 변수명 )
                return DialogUI( onAdd : onAdd, onAddFriend : onAddFriend) ;
              }
          );
        },
      ),
    );
  }
}

//DialogUI 커스텀 위젯
class DialogUI extends StatelessWidget {
  DialogUI ({Key? key, this.onAdd, this.onAddFriend}) : super(key:key);
  final onAdd;
  final onAddFriend;
  //input에 입력한 내용 가져오기
  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // TextField : input 위젯
            TextField(
              //** inputData.text로 가져올수 있음
              controller: inputData,
              //** 유저가 입력한 데이터를 변수에 담기
              onChanged: (text) { inputData2 = text;},
            ),
            //확인 버튼 누를시 전화번호부에 유저 추가됨
            TextButton( child: Text('확인'), onPressed:(){ onAddFriend( inputData.text.toString() ); onAdd(); }),
            TextButton( child: Text('취소'), onPressed:(){ Navigator.pop(context); })
          ],
        ),
      ),
    );
  }
}



