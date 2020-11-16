import 'package:flutter/material.dart';
import 'package:places/home.dart';
import 'package:places/palces_cupertino.dart';
import 'package:places/places.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Places",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Cupertino(),
    );
  }
}
