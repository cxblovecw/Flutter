import "package:flutter/material.dart";
import 'animation.dart';
main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: FirshPage(),
  ));
}

class FirshPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("页面跳转动画"),
          // appBar下面的阴影
          elevation: 100.0,
        ),
        backgroundColor: Colors.blue,
        body: Center(
         child: Column(
           children: <Widget>[
             MaterialButton(
               child: Icon(Icons.navigate_next, color: Colors.white,size:64.0),
               onPressed: (){
             // MaterialPageRoute 是系统提供的路由跳转
            //  Navigator.push(context, MaterialPageRoute(
            //    builder: (context){
            //      return SecondPage();
            //    }
            // ));
            Navigator.push(context, MyAnimation(
              widget: SecondPage(),
              keyword:'FadeTransition'
            ));
         },
         ),
             MaterialButton(
               child: Icon(Icons.navigate_next, color: Colors.white,size:64.0),
               onPressed: (){
                // MaterialPageRoute 是系统提供的路由跳转
                //  Navigator.push(context, MaterialPageRoute(
                //    builder: (context){
                //      return SecondPage();
                //    }
                // ));
                Navigator.push(context, MyAnimation(
                  widget: SecondPage(),
                  keyword:'RotationTransition'
                ));
            },
            ),
             MaterialButton(
               child: Icon(Icons.navigate_next, color: Colors.white,size:64.0),
               onPressed: (){
             // MaterialPageRoute 是系统提供的路由跳转
            //  Navigator.push(context, MaterialPageRoute(
            //    builder: (context){
            //      return SecondPage();
            //    }
            // ));
            Navigator.push(context, MyAnimation(
              widget: SecondPage(),
              keyword:'ScaleTransition'
            ));
         },
         ),
             MaterialButton(
                   child: Icon(Icons.navigate_next, color: Colors.white,size:64.0),
                   onPressed: (){
                // MaterialPageRoute 是系统提供的路由跳转
                //  Navigator.push(context, MaterialPageRoute(
                //    builder: (context){
                //      return SecondPage();
                //    }
                // ));
               Navigator.push(context, MyAnimation(
                 widget: SecondPage(),
                  keyword:'RotateAndScale'
               ));
         },
         ),
             MaterialButton(
               child: Icon(Icons.navigate_next, color: Colors.white,size:64.0),
               onPressed: (){
             // MaterialPageRoute 是系统提供的路由跳转
            //  Navigator.push(context, MaterialPageRoute(
            //    builder: (context){
            //      return SecondPage();
            //    }
            // ));
            Navigator.push(context, MyAnimation(
              widget: SecondPage(),
              keyword:'SlideTransition'
            ));
         },
         )
           ],
         ),
        ),
      );
}
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SecondPage"),),
        backgroundColor: Colors.purple,
        body: Center(
          child: MaterialButton(
            child: Icon(Icons.navigate_before,size: 64.0,color:Colors.white),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
      ),
    );
  }
}