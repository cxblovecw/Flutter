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
    return RaisedButton(onPressed: () async{
      // 1.不使用async Navigator.push会返回一个Future对象 调用then方法获取传递过来的参数
          //  final result = Navigator.push(context, MaterialPageRoute(builder: (context){
          //    return SecondScreen();
          //  }));
          //  result.then((value){
          //   print(value);
          //      // 这个是使用需要外部的上下文context包含Scaffold
          //  Scaffold.of(context).showSnackBar(SnackBar(content:Text("$value")));
          //  });
      // 2.使用async和await 直接返回结果
        final result2 =await Navigator.push(context, MaterialPageRoute(builder: (context){
             return SecondScreen();
           }));
          print(result2);
               // 这个是使用需要外部的上下文context包含Scaffold
           Scaffold.of(context).showSnackBar(SnackBar(content:Text("$result2")));
           },child: Text("前进"));
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
                Navigator.pop(context,['name','age','sex']);
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