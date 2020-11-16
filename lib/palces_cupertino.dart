import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:places/home.dart';
import 'package:places/profile_places.dart';
import 'package:places/search_places.dart';

class Cupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final places = Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.black.withAlpha(50),
          items: [
            BottomNavigationBarItem (
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )
            ),
            BottomNavigationBarItem (
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )
            ),
            BottomNavigationBarItem (
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                )
            )
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          CupertinoTabView cupertinoTabView;
          switch(index){
            case 0:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context) => MyHome(),
              );
              break;
            case 1:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context) => SearchPlaces(),
              );
              break;
            case 2:
              cupertinoTabView = CupertinoTabView(
                builder: (BuildContext context) => ProfilePlaces(),
              );
              break;
          }
          return cupertinoTabView;
        }
      ),
    );
    return places;
  }

}