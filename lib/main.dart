import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "毛玻璃效果",
      home: FrostedGlass()
    );
  }
}

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("毛玻璃效果"),
        ),
        // 1. 使用层叠布局 使蒙版可以盖住需要模糊的widget
        body: Stack(
          children: <Widget>[
            // 2.需要模糊的widget
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 200,
                minHeight: 200,
              ),
              child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586681256921&di=411ef3746562b562c913779529748cec&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2F7%2Fdb%2F87c441470b.jpg"),
            ),
            Center(
              // 这个是添加模糊度的
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    // 相等的话 看着不会晕  不等的话 看着会有点晕
                    sigmaX: 5.0,
                    sigmaY: 5.0
                    ),
                // 这个这是单纯的蒙板
                // Opcity 控制透明度的组件
                    child:Opacity(
                      opacity: 0.5,
                      child: Container(
                      width:double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                    )),
                    ),
            )
          ],
        ),
      ),
    );
  }
}