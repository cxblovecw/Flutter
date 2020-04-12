import 'package:flutter/material.dart';


class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}
// 1.想要页面保持状态 使用with 混入 AutomaticKeepAliveClientMixin

  // @override
  // bool get wantKeepAlive => true;
class _CartPageState extends State<CartPage> with AutomaticKeepAliveClientMixin{
  int counter=0;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: <Widget>[
          Text("Cart:$counter"),
          RaisedButton(onPressed: (){
            setState(() {
              counter++;
            });
          },child:Text("+")),
          Container(width: double.infinity,height: 500,color: Colors.blue,),
          Container(width: double.infinity,height: 500,color: Colors.yellow,),
          Container(width: double.infinity,height: 500,color: Colors.green,),
          
        ],
      ),
    );
  }

 
}