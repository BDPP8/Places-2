import 'package:flutter/material.dart';
import 'package:places/card_images_list.dart';
import 'package:places/gradient_back.dart';

class HomeAppBar extends StatelessWidget{
  String textoTitulo;
  HomeAppBar(this.textoTitulo);
  @override
  Widget build(BuildContext context) {
    //titulo
    final titulo = Container(
      margin: EdgeInsets.only(
        top: 50,
        left: 30
      ),
      child: Text(
        textoTitulo,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "VampiroOne",
            fontSize: 30,
            color: Colors.white
        ),
      ),
    );
    final appBar=Stack(
      children: <Widget>[
        GradientBack(),
        titulo,
        CardImagesList(),
      ],
    );
    return appBar;
  }

}