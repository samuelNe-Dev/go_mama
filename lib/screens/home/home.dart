import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mama/home_screen.dart';
import 'package:go_mama/screens/home/imageProfile.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';
import 'package:go_mama/screens/profile/currentUserProfile.dart';
import 'package:go_mama/screens/profile/otherUserProfile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:go_mama/screens/home/hilfe_page.dart';
import 'package:go_mama/screens/home/Finanzierung.dart';
import 'package:go_mama/Map.dart';


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
  var user = FirebaseAuth.instance.currentUser;
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('Users').snapshots();

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
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
              textAlign: TextAlign.center,
            )),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Text(
                      "Ich bin lieber glücklich als perfekt.",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
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
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
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
      child: Map(),
      /*
        Container(
            margin: const EdgeInsets.only(
              left: 0.0,
              right: 0.0,
              top: 0.0,
            ),
            child: Image(
              image: AssetImage('images/map3.jpeg'),
              width: 900,
              height: 900,
            )
            ),
            */
    ),
    Center(
      // 'Profil' - page
      child: OtherUserProfile(userUID: "poHMKGb1JVdVX9Dmjjr8yqcCNSx1",),
    ),
    Center(
        // 'Nachrichten' - page
        child: HomeScreen()),

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
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.orange, fontSize: 18.0)),
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
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.orange, fontSize: 18.0)),
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