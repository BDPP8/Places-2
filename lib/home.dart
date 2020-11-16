import 'package:flutter/material.dart';
import 'package:places/card_images.dart';
import 'package:places/card_images_list.dart';
import 'package:places/description_place.dart';
import 'package:places/home_app_bar.dart';
import 'package:places/review.dart';
import 'package:places/review_list.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //descripcion place
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 300,
        left: 30,
        right: 30,
      ),
      child: DescriptionPlace("Descripcion",5,"El periodico o diario es un documento que presenta en orden cronologico o tematico de un cierto numero de informaciones y comentarios sobre sucesos ocurridos o previsibles durante un periodo dado. Por extension, un diario tanbien designa una publicacion que agrupa y presenta cierto numero de articulos sobre los sucesos del dia"),
    );

    //review
    final reviewList = Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: ReviewList()
    );
    final listView = ListView(
      children: <Widget>[
        descriptionPlace,
        reviewList
      ],
    );
    return Scaffold(
      body: Stack(
        children: [
          //descriptionPlace,
          //reviewList
          listView,
          HomeAppBar("Diario Digital"),
        ],
      ),
    );
  }

}
