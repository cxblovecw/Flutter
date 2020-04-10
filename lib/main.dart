import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Row',
      home: Scaffold(
        appBar: AppBar(
          title:Text("Row Widget")
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Text("Hello World"),
            Expanded(child: Text("Flutter中的ColumnWidget")),
            Text("Hello Flutter")
          ]
        )
        ) 
    );
}
}