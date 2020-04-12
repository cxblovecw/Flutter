import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);
  
  @override
  _CategoryPageState createState() => _CategoryPageState();
 }


class _CategoryPageState extends State<CategoryPage> with AutomaticKeepAliveClientMixin{
    @override
  bool get wantKeepAlive => true;
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Text("Category:$counter"),
          RaisedButton(onPressed: (){
            setState(() {
              counter++;
            });
          },child:Text("+"))
        ],
      ),
    );
  }
}