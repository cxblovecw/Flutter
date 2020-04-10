import "package:flutter/material.dart";
import 'package:flutter2/views/category/category.dart';
import 'package:flutter2/views/home/home.dart';
import 'package:flutter2/views/profile/profile.dart';
import 'package:flutter2/views/search/search.dart';
main(List<String> args) {
  runApp(App());
}
class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Content();
  }
}


class Content extends State{
  List<Widget> list=[Home(),Search(),Category(),Profile()];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title:'我是标题',
      home: Scaffold(
        appBar: AppBar(
          title:Text("BottomNavigationBar")
        ),
        body: list[currentIndex],
        // 1.创建BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          type:BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("主页")
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.category),
              title: Text("分类")
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.search),
              title: Text("搜索")
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.person),
              title: Text("我的")
            ),
          ],
          // 2.点击设置currentIndex
          onTap: (index){
            setState(() {
            currentIndex=index;
            });
          },
          currentIndex: currentIndex,
        ),
      ),
    );
}
}