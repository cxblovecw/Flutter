import 'package:flutter/material.dart';

class Product{
  final String name;
  final String description;
  Product(this.name,this.description);
}

main(List<String> args) {
  runApp(MaterialApp(
    title:"导航传递和接收参数",
    home:FirstScreen(
      product: List.generate(20, (index){
        return Product("商品$index", "这是商品$index的描述信息");
      })),
    )
  );
}

class FirstScreen extends StatelessWidget {
  final List<Product> product;
  const FirstScreen({this.product,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("导航传递和接收参数")
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context,index){
          return ListTile(
            leading:Icon(Icons.person),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return Detail(name:product[index].name,description:product[index].description);
              }));
            },
            title:Text("这是第$index个商品")
          );
        },
      ),
    );   
  }
}

class Detail extends StatelessWidget{
  final String name;
  final String description;
  Detail({Key key,this.name,this.description});
  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      appBar:AppBar(
        title:Text("商品详情页面")
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("这是商品${name}的详情页面，详情信息是:${description}"),
            RaisedButton(
              child: Text("返回"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        )
      )
    );
  }
}