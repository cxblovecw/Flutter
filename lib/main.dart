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
        body:Row(
            children:<Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: (){},
                  color:Colors.green,
                  child: Text("Green Button")
                  )
                ),
            Expanded(
              flex: 1,
              child: RaisedButton(onPressed: (){},color:Colors.red,child: Text("Red Button"))),
            Expanded(
              flex: 3,
            child: RaisedButton(onPressed: (){},color:Colors.orange,child: Text("Orange Button"))),]
            )
            ) 
    );
}
}