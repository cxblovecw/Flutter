import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with AutomaticKeepAliveClientMixin{
  int counter=0;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Text("Profile:$counter"),
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