
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
            appBar: ( AppBar(
              toolbarHeight: 60,
              leadingWidth: 140,

              leading: Padding(padding:EdgeInsets.all(15), child:Text( '금호동3가',style: TextStyle(fontSize: 25)),),
              actions: const [Padding(padding: EdgeInsets.all(15), child: Icon(Icons.search, size: 35)),
                Padding(padding: EdgeInsets.all(15), child: Icon(Icons.menu, size: 35)),
                Padding(padding: EdgeInsets.all(15), child: Icon(Icons.add_alert, size: 35))
              ],
              shape: Border(
                  bottom:  BorderSide(
                    color:  Colors.grey,
                    width: 1,
                  )
              ),
            ) ),
            body: Container(
              height: 150,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10), child: Image.asset("IMG_1256.JPG")),
                  Padding(padding: EdgeInsets.all(10),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("스폰지밥 팝니다.", style: TextStyle(fontSize: 30),)
                        , Text("부천시 상동 *  끌올 10분 전", style: TextStyle(fontSize: 13, color: Colors.grey),)
                        , Text("100,000원")
                        , Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Icon(Icons.favorite_border), Text("4")]
                        )
                      ],
                    ),)
                ],
              ),

            )



        )

    );




  }
}
