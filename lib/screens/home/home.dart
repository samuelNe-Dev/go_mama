import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';
import 'package:table_calendar/table_calendar.dart';

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
      // 'Profil' - page
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: SingleChildScrollView(
                      child: Column(children: <Widget>[
              Center(
                  child: Container(
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.orange,
                        width: 2.5,
                        style: BorderStyle.solid),
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/example_profil.jpg"))),
              )),
              Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Name:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text("Sandra Sandramann", style: TextStyle(fontSize: 20),),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Geburtsdatum:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text("01.01.0000", style: TextStyle(fontSize: 20),),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Studiengang:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text("Informatik", style: TextStyle(fontSize: 20),),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Mutter:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text("ja", style: TextStyle(fontSize: 20),),
                    )
                  ])),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                        "Verfügbarkeiten",
                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TableCalendar(focusedDay: DateTime.now(), firstDay: DateTime.utc(2020, 01, 01), lastDay: DateTime.utc(2035, 12, 31)),
                  ),
                  Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.message,
                      size: 30,
                    ),
                    label: Text("Schreib mir eine Nachricht", style: TextStyle(fontSize: 16)),
                    onPressed: () =>{},))
            ]),
          ),
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
    final auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Mama"),
        actions: [
          TextButton(
            child: Text("Log out"),
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {
              auth.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginHome()));
            },
          ),
        ],
      ),
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
