import 'package:flutter/material.dart';
import 'package:flutter2/views/cart.dart';
import 'package:flutter2/views/category.dart';
import 'package:flutter2/views/profile.dart';


void main(){runApp(MyApp());}


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme:ThemeData(primarySwatch: Colors.lightBlue),
      title: "保持页面状态",
      home: KeepAlive()
    );
  } 
}


class KeepAlive extends StatefulWidget {
  KeepAlive({Key key}) : super(key: key);

  @override
  _KeepAliveState createState() => _KeepAliveState();
}

class _KeepAliveState extends State<KeepAlive> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() { 
    super.initState();
    controller=TabController(length: 3,vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("保持页面状态"),
         // appBar下的TabBar
         bottom: TabBar(
           // TabBar的控制器
           controller: controller,
           tabs: [
             // TabBar的图标
             Tab(icon: Icon(Icons.add_shopping_cart),text: "购物车",),
             Tab(icon:Icon(Icons.category),text:"分类"),
             Tab(icon:Icon(Icons.person),text: "我的",)
           ], 
         ),
       ),
       // TabBar不同选项对应的不同视图
       body: TabBarView(
         controller:controller,
         children: [
           CartPage(),
           CategoryPage(),
           ProfilePage(),
       ])
    );
  }
}