import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  List<String> list=List.generate(20, (index){
    return "$index";
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'我是标题',
      home: Scaffold(
        appBar: AppBar(
          title:Text("使用List创建ListView")
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (item,index){
            return ListTile(
              leading:Icon(Icons.list),
              title: Text(list[index]),
            );
          },
        )
      ),
    );
}
}