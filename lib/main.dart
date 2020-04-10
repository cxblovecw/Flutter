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
        body: Column(
         children: <Widget>[
           Container(
            child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586499494712&di=7a58119bfdb6fbac2e37d8aa25ec1994&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fa6efce1b9d16fdfabf36882ab08f8c5495ee7b9f.jpg",fit: BoxFit.contain,
            // color: Colors.yellow,colorBlendMode: BlendMode.darken,
            ), 
            width: 200,height: 200,color: Colors.lightBlue,
           ),
           Container(
             child:Image.asset("assets/images/lion.jpg")
           )
         ],
        )
      ),
    );
}
}