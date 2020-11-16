import 'package:flutter/material.dart';
import 'package:places/profile_places.dart';
import 'package:places/search_places.dart';

import 'home.dart';

class Places extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Places();
  }

}
class _Places extends State<Places>{
  int currentIndex = 0;
  List<Widget> pantallas = <Widget>[
    MyHome(),
    SearchPlaces(),
    ProfilePlaces()
  ];
  void cambiarPantalla(int index){
    //este metodo actualiza el widget
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final places = Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
          primaryColor: Color(0xFF574ACF)
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title:Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.search,
                    color: Colors.white,
                ),
                title:Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.person,
                    color: Colors.white,
                ),
                title:Text("")
            )
          ],
          onTap: cambiarPantalla,
        ),
      ),
      body: pantallas[currentIndex],
    );
    return places;
  }
}