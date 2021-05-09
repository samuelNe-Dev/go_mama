import 'package:flutter/material.dart';

/*
This is the fincance screen, where the user gets informational links to different 
financing topics.
*/

class Finance extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Go Mama"))),
      body: Center(
        child: Text("Finanzierung"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        unselectedFontSize: 15,
        selectedFontSize: 17,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Karte",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Nachrichten",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Hilfe",
            backgroundColor: Colors.orange,
          )]
        ));
  }
}