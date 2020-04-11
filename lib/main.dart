import "package:flutter/material.dart";
import 'package:flutter2/views/home/home.dart';
import 'package:flutter2/views/profile/prifile.dart';
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'不规则底部导航栏',
      theme: ThemeData(
        // primarySwatch: Colors.lightBlue
      ),
      // 自定义底部导航栏
      home: MyBottomNavigationBar(),
    );
}
}
class MyBottomNavigationBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyBottomNavigationBarState();
  }
}

class MyBottomNavigationBarState extends State {
  // 当前显示的页面的index
  int currentIndex=0;
  // 用于底部导航栏字体和图标的颜色设置
  List<Color> colors=[Colors.orange,Colors.white];
  // 页面列表
  final List<Widget> list=[
    Home(),Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // 浮动按钮
        floatingActionButton: FloatingActionButton(onPressed: (){
          // 浮动按钮点击 返回一个新的页面
          Navigator.push(context,MaterialPageRoute(
            builder: (context){
              return Scaffold(
                appBar: AppBar(title:Text("New Page"),),
                body: Center(child:Text("我是新的页面")),
              );
            }
          ));
          //tooltip 长按显示文本
        },tooltip: '哈哈哈',child: Icon(Icons.add,color:Colors.white)),
        // 浮动按钮的位置设置 Docked是嵌入底部导航栏的
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          title:Text("不规则底部导航栏",style: TextStyle(color:Colors.white),)
        ),
        // 使用BottomAppBar进行底部导航栏设置
        bottomNavigationBar: BottomAppBar(
          // 形状为圆形缺口矩形
          shape: CircularNotchedRectangle(),
          color: Colors.lightBlue,
          // 子元素
          child: Row(
            // Row的子元素宽度尽可能大
            mainAxisSize: MainAxisSize.max,
            // Row子元素对齐方式
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            FlatButton(onPressed: (){
              setState(() {
                  currentIndex=0;
                  for (var i = 0; i < colors.length; i++) {
                    colors[i]=Colors.white;
                   }
                   colors[currentIndex]=Colors.orange;
                 });
              },
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.home,color:colors[0]),
                  Text("主页",style: TextStyle(color:colors[0]))
                ],
              ),),
             FlatButton(onPressed: (){
               setState(() {
                      currentIndex=1;
                       for (var i = 0; i < colors.length; i++) {
                        colors[i]=Colors.white;
                      }
                       colors[currentIndex]=Colors.orange;
                    });
             },
            //  color: Colors.lightBlue,
             child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.person,color:colors[1]),onPressed: null,),
                  Text("我的",style: TextStyle(color:colors[1]),)
                ],
              ),)
            ],
          ),
        ),
        body: list[currentIndex]
    )
    );
  }
}