import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'子页面向父页面传递数据',
      home:FirstScreen()
    );
}
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:Text("子页面向父页面传递数据")
        ),
        body: Center(
         child:JupmButton()
        ),
      );
  }
}

class JupmButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: ()async{
           final result =await Navigator.push(context, MaterialPageRoute(builder: (context){
             return SecondScreen();
           }));
           // 这个是使用需要外部的上下文context包含Scaffold
           Scaffold.of(context).showSnackBar(SnackBar(content:Text("$result")));
         },child: Text("前进"),);
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("子页面"),
      ),
      body:Center(
        child:Column(
          children:<Widget>[
            RaisedButton(
              onPressed:(){
                Navigator.pop(context,"button 1");
              },
              child:Text("按钮一")
            ),
            RaisedButton(
              onPressed:(){
                   Navigator.pop(context,"button 2");
              },
              child:Text("按钮二")
            )
          ]
        )
      )
    );
  }
}