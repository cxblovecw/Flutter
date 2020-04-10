import "package:flutter/material.dart";
main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'ListView',
      home: Scaffold(
        appBar: AppBar(
          title:Text("ListView")
        ),
        body: Center(
         child:ListView(
           children: <Widget>[
             Text("纵向列表"),
             ListTile(
               leading: Icon(Icons.perm_camera_mic),
               title: Text("perm_camera_mic"),
             ),
             ListTile(
               leading: Icon(Icons.person),
               title: Text("person"),
             ),
             ListTile(
               leading:Icon(Icons.phone),
               title:Text("phone")
             ),
             Container(
               height: 200,
               child:ListView(
                 scrollDirection: Axis.horizontal,
                 children:<Widget>[
                   Container(
                     width: 150,
                     color:Colors.green,
                     child: Icon(Icons.phone),
                   ),
                  Container(
                     width: 150,
                     color:Colors.orange,
                     child: Icon(Icons.photo_camera),
                   ),
                   Container(
                     width: 150,
                     color:Colors.yellow,
                     child:Icon(Icons.not_listed_location)
                   ),
                   Container(
                     width:150,
                     color:Colors.purple,
                     child:Icon(Icons.open_with)
                   ),
                 ]
               )
             )
           ],
         )
        ),
      ),
    );
}
}