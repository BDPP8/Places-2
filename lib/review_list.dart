import 'package:flutter/material.dart';
import 'package:places/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final reviewList=Column(
      children: <Widget>[
        Review("assets/images/persona1.jpg","Roxhana Ledezma Santos", "Calificacion", 4 ,"Muy completa la informacion",
            "------------"),
        Review("assets/images/persona2.jpg","Nefly Aranibal Gutierrez", "Calificacion", 5 ,"Excelente!",
            "------------"),
        Review("assets/images/persona3.jpg","Sandra Mamani Rios", "Calificacion", 3 ,"En constante actualizacion",
            "------------"),
        Review("assets/images/persona4.jpg","Jorge Valderrama Surita", "Calificacion", 5 ,"Muy bueno el matutino de hoy",
            "------------"),
        Review("assets/images/persona5.jpg","Estaban Muñoz Burgos", "Calificacion", 5 ,"Siempre dando buena informacion",
            "------------"),
      ],
    );
    return reviewList;
  }

}