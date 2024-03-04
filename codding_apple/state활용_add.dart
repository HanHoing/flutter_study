
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 1;
  var name = ['이름1', '이름2', '이름3'];
  var like = [0, 0, 0];

  // 팜업 자식한테 줄 더하기 함수
  onAdd() {
    setState(() {
      total++;
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
                return DialogUI( onAdd : onAdd);
              }
          );
        },
      ),
    );
  }
}

//DialogUI 커스텀 위젯
class DialogUI extends StatelessWidget {
  const DialogUI ({Key? key, this.onAdd}) : super(key:key);
  final onAdd;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(
                child: Text('확인'),
                onPressed:(){ onAdd(); }),
            TextButton(
                child: Text('취소'),
                onPressed:(){ Navigator.pop(context); })
          ],
        ),
      ),
    );
  }
}


