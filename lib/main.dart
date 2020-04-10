import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Card', 
      home: Scaffold(
        appBar: AppBar(
          title:Text("Card")
        ),
        body:Card(
          child:ListView(
            children:<Widget>[
              ListTile(
                leading:Icon(Icons.list),
                title:Text("List"),
              ),
              Divider(),
              ListTile(
                leading:Icon(Icons.list),
                title:Text("List"),
              ),
              Divider(),
              ListTile(
                leading:Icon(Icons.list),
                title:Text("List"),
              ),
            ]
          )
        )
        ) 
    );
}
}