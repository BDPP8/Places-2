import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/rounded_buttom.dart';

class DescriptionPlace extends StatelessWidget{
  //variable
  String textoTitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  //metodo constructor
  DescriptionPlace(this.textoTitulo, this.cantidadEstrellas, this.textoDescripcion);
  @override
  Widget build(BuildContext context) {
    //Titulo
    final titulo = Container(
      margin: EdgeInsets.only(
          right: 10
      ),
      child: Text(
        textoTitulo,
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          fontFamily: "PlayfairDisplay"
        ),
      ),
    );
    //estrella
    final estrella = Container(
      margin: EdgeInsets.only(
          right: 1
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    //estrella borde
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 8
      ),
      child: Icon(
        Icons.star,
        color: Colors.grey,
      ),
    );
    //estrellas
    List<Container> estrellas = new List();
    for(int i=0;i<5;i++){
      if(i<cantidadEstrellas){
        estrellas.add(estrella);
      }else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
      children: estrellas,
    );

    //filaTitulo
    final filaTitulo = Row(
      children: [
        titulo,
        filaEstrellas
      ],
    );
    //descripcion
    final description = Container(
      margin: EdgeInsets.only(
          top: 10
      ),
      child: Text(
        textoDescripcion,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontFamily: "PlayfairDisplay"
        ),
      ),
    );
    //button
    final button = Container(
    );
    //descriptionPlace
    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        filaTitulo,
        description,
        RoundedButtom("Navigate")
      ],
    );
    return descriptionPlace;
  }

}