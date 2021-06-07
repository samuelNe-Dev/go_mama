eimport 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mama/home_screen.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:go_mama/screens/home/hilfe_page.dart';
import 'package:go_mama/screens/home/Finanzierung.dart';

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
              style: GoogleFonts.poppins( textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600
              )),
              textAlign: TextAlign.center,
            )),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Text(
                      "Ich bin lieber glücklich als perfekt.",
                      style: GoogleFonts.poppins( textStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Colors.deepOrange)),
                      textAlign: TextAlign.center,
                    ))),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Tägliche Tipps und Motivationssprüche, um dich jeden Tag positiv zu beeinflussen!",
                      style: GoogleFonts.poppins( textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
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
              left: 0.0,
              right: 0.0,
              top: 0.0,
            ),
            child: Image(
              image: AssetImage('images/map2.jpeg'),
              width: 900,
              height: 900,
            )),
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
                      style: GoogleFonts.poppins( textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Sandra Sandramann",
                        style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 18)),
                      ),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Geburtsdatum:",
                      style: GoogleFonts.poppins( textStyle:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "01.01.0000",
                        style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 18)),
                      ),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Studiengang:",
                      style: GoogleFonts.poppins( textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Informatik",
                        style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 18)),
                      ),
                    )
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Anzahl Kinder:",
                      style: GoogleFonts.poppins( textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "1",
                        style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(children: <Widget>[
                    Text(
                      "Über mich:",
                      style: GoogleFonts.poppins( textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: SingleChildScrollView(
                        child: Text(
                          "Hilfsbereit.",
                          style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 18)),
                        ),
                      ),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  "Verfügbarkeiten",
                  style: GoogleFonts.poppins( textStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2020, 01, 01),
                    lastDay: DateTime.utc(2035, 12, 31)),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.message,
                      size: 30,
                    ),
                    label: Text("Nachricht schreiben",
                        style: GoogleFonts.poppins( textStyle: TextStyle(fontSize: 16))),
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                    onPressed: () => {},
                  ))
            ]),
          ),
        ),
      ),
    ),
    Center(
      // 'Nachrichten' - page
      child: HomeScreen()
    ),
    //Center(
    // 'Info' - page

    Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              //Container 1

              Container(
                margin: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 40.0,
                ),
                padding: const EdgeInsets.only(
                  top: 40,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                color: Colors.white,
                child: RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Finanzierung\n\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                        text:
                            'Falls Sie Schwierigkeiten beim Finanzierung haben oder keine Ahnung, wie man sich finanzieren kann,dann klicken Sie  ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        )),
                    TextSpan(
                      text: 'hier',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 18.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => Finanzierung());
                        },
                    ),
                  ],
                )),
              ),

              // Container 2

              Container(
                margin: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 50.0,
                ),
                padding: const EdgeInsets.only(
                  top: 60,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                color: Colors.white,
                child: RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hilfe\n\n',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                        text:
                            'Falls Sie Hilfe oder Beratung brauchen, haben wir Links dafür bereit gestellt. Für weitere Informationen klicken Sie  ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        )),
                    TextSpan(
                        text: 'hier',
                        style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 18.0)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => Hilfe());
                          }),
                  ],
                )),
              )
            ],
          ),
        )),
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
            label: "Info",
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