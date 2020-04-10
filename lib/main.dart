import 'package:flutter/material.dart';

void main()=>runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"导航",
      home:FirstScreen()
    );
  }
}


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text("导航页面"),
        ),
        body:Center(
          child:RaisedButton(
            child:Text("前进"),
            onPressed:(){
              // 将当前的上下文环境和对应的Widget添加到Navigator中
              // context为上下文环境
              Navigator.push(context, 
              // 这个是页面路由 返回的是需要显示的子页面
              MaterialPageRoute(
                builder: (context){
                  return SecondScreen();
                }
              ));
            }
          )
        )
      );
  }
}


class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("第二个页面"),      
      ),
      body:Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("返回"),
        )   
      )
    );
  }
}