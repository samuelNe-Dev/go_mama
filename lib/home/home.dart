import 'package:flutter/material.dart';

/*
This is the home screen after signing in. Here the user sees a motivational quote
or tips. Additionally there is a fixed bottom navigation bar where the user can 
switch to other pages: "Karte", "Profil", "Nachrichten", "Hilfe".
*/

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final screens = [
    Center(
      // Home Screen
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              "Startseite",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            )),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Text(
                      "Ich bin lieber glücklich als perfekt.",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.deepOrange),
                      textAlign: TextAlign.center,
                    ))),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      "Tägliche Tipps und Motivationssprüche, um dich jeden Tag positiv zu beeinflussen!",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )))
          ]),
        ),
      ),
    ),
    Center(
      // 'Karte' - page
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              "Karte",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            )),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ]),
        ),
      ),
    ),
    Center(
      // 'Nachrichten' - page
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              "Mein Profil",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            )),
          ]),
        ),
      ),
    ),
    Center(
      // 'Nachrichten' - page
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              "Nachrichten",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            )),
          ]),
        ),
      ),
    ),
    Center(
      // 'Hilfe' - page
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: Column(children: <Widget>[
            Center(
                child: Text(
              "Hilfe",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Elterngeld",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Kindergeld",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Mutterschaftsgeld",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Bafög",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Finanzierung",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
          ]),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Go Mama")),
      body: screens[_currentIndex],
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
              icon: Icon(Icons.person),
              label: "Profil",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Nachrichten",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Hilfe",
            backgroundColor: Colors.orange,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
