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
         child:Text('Hello World,接下去要不断的学习 提高自己的竞争力 别再浑浑噩噩 未来不迷茫',
         style: TextStyle(
           fontSize:20,
           decoration: TextDecoration.underline,
           decorationColor: Colors.red,
           decorationStyle:TextDecorationStyle.dotted
           ),
         textAlign: TextAlign.center,
         maxLines: 2,
         overflow: TextOverflow.fade,)
        ),
      ),
    );
}
}