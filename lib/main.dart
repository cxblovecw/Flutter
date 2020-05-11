import 'package:flutter/material.dart';
import 'package:flutter2/searchBar.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SearchBar",
      theme: ThemeData.light(),
      home: SearchBar(),
    );
  }
}

