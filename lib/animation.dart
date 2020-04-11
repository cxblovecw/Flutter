import 'package:flutter/material.dart';

class MyAnimation extends PageRouteBuilder {
  // 跳转到的下一个路由页面
  final Widget widget;
  final String keyword;
  MyAnimation({Key key,this.widget,this.keyword}):super(
    // 动画时长
    transitionDuration:Duration(milliseconds: 500),
    // 
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
    ){
      return widget;
    },
     transitionsBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child
    ){
      // 注意:基本都是animtion1 
      // 淡入淡出动画
      if(keyword=='FadeTransition'){
        return FadeTransition(
          // 自定义动画样式
          opacity: Tween(begin: 0.0,end: 1.0).animate(
          CurvedAnimation(parent: animation1, curve:Curves.linear)
          ),
          // 使用系统默认提供的动画样式 
          // opacity: animation1,
          child: child,
        );
      }
      else if(keyword=='RotationTransition'){
      // 旋转动画
      return RotationTransition(
        turns: Tween(begin: 0.0,end: 1.0).animate(
          CurvedAnimation(parent: animation1, curve: Curves.linear)
        ),
        child: child,
        alignment:Alignment.center
      );
      }
      
      // 缩放动画
      else if(keyword=="ScaleTransition"){
        // return ScaleTransition(
        // scale:animation1,
        // child: child);
        return ScaleTransition(
          scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.linear)),
          child: child,
        );
      }
      // 缩放加旋转  child中嵌套另一个动画
      else if(keyword=='RotateAndScale'){
        return RotationTransition(
        turns: animation1,
        child: ScaleTransition(
        scale:animation1,
        child: child
        ),
      );
      }

      // 左右滑动动画
      else if(keyword=='SlideTransition'){
        return SlideTransition(
        child: child,
        position: Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0)
        ).animate(CurvedAnimation(
          parent: animation1, 
          curve: Curves.bounceInOut))
      );
      }
      else {
        return Center(
          child: Text("没有这个动画"),
        );
      }


    });
}