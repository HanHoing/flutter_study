import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //텍스트
        home: Text('안뇽')
        //아이콘
        home: Icon(Icons.star)
    //이미지
    home: Image.asset('IMG_1256.JPG')
    //위젯 기준점 설정
    home: Center(
      //네모박스 width, height 단위는 LP (50LP==1.2cm)
        child: Container( width: 50, height: 50, color: Colors.blue )
        child: SizedBox()  //row, height만 넣는다면 사용, 훨씬 가벼움
    )
    );
  }

}
