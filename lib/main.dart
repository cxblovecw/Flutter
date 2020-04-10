import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'GridView',
      home: Scaffold(
        appBar: AppBar(
          title:Text("GridView")
        ),
        // body: GridView.count(
        //   crossAxisCount: 3,padding: EdgeInsets.all(5),
        //   mainAxisSpacing: 10,   //主轴间隔
        //   crossAxisSpacing: 10,  //侧轴间隔
        //   childAspectRatio: 0.5,
        //   children: <Widget>[
        //     Container(width:20,height:20,color:Colors.green),
        //     Container(width:20,height:20,color:Colors.green),
        //     Container(width:20,height:20,color:Colors.green),
        //     Container(width:20,height:20,color:Colors.green),
        //     Container(width:20,height:20,
        //   ],
        //   )
        // )
        body: GridView(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
            crossAxisCount: 3
          ),
          children: <Widget>[
            Container(width:20,height:20,color:Colors.green),
            Container(width:20,height:20,color:Colors.green),
            Container(width:20,height:20,color:Colors.green),
            Container(width:20,height:20,color:Colors.green),
            Container(width:20,height:20,color:Colors.green),
          ],
        )
        
      )
    );
}
}