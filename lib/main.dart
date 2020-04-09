import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      home: Scaffold(
        appBar: AppBar(
            title:Text('Container'),
        ),
        body: Center(
          child: Container(
            height: 200,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.blue
              ]),
              border: Border.all(width:5,color:Colors.black),
              borderRadius: BorderRadius.circular(10)
             ),
            child: Text("使用Container",style: TextStyle(fontSize:25),),
            alignment: Alignment.bottomCenter,
        ),
        )
      ),
    );
}
}