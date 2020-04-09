import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'我是标题',
      home: Scaffold(
        appBar: AppBar(
          title:Text("起步")
        ),
        body: Center(
         child:Text('Hello World',style: TextStyle(fontSize:30),)
        ),
      ),
    );
}
}