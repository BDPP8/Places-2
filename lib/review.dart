import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  //variables
  String pathFoto;
  String textoNombreUsuario;
  String textoResumenUsuario;
  int cantidadEstrellas;
  String comentario;
  String segundoComentario;
  //metodo constructor
  Review(this.pathFoto, this.textoNombreUsuario, this.textoResumenUsuario, this.cantidadEstrellas, this.comentario,this.segundoComentario);
  @override
  Widget build(BuildContext context) {
    //foto
    final foto = Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
              pathFoto
          ),
          fit: BoxFit.cover,
        )
      ),
    );
    //nombre
    final nombre=Container(
      child: Text(
        textoNombreUsuario,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black45,
          fontWeight: FontWeight.bold
        ),
      ),
    );
    //detalles
    final detalles = Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Text(
        textoResumenUsuario,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontFamily: "VampiroOne"
        ),
      ),
    );
    //estrella
    final estrella = Container(
      margin: EdgeInsets.only(
          right: 5,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 13,
      ),
    );
    //estrella borde
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5,
      ),
      child: Icon(
        Icons.star,
        color: Colors.grey,
        size: 13,
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
    //caracteristicas
    final caracteristicas=Row(
      children: [
        detalles,
        filaEstrellas,
      ],
    );
    //elcomentario
    final elcomentario = Container(
      child: Text(
        comentario,
        style: TextStyle(
          fontSize: 14,
          fontFamily: "VampiroOne",
        ),
      ),
    );
    //elotrocomentario
    final elotrocomentario = Container(
      child: Text(
        segundoComentario,
        style: TextStyle(
          fontSize: 10,
          fontFamily: "VampiroOne",
        ),
      ),
    );
    //usuario
    final usuario=Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nombre,
        caracteristicas,
        elcomentario,
        elotrocomentario
      ],
    );
    //review
    final filaReview = Row(
      children: [
        foto,
        usuario
      ],
    );
    //review
    final review =Container(
      margin: EdgeInsets.only(
        top: 10
      ),
      child: filaReview,
    );
    return review;
  }

}