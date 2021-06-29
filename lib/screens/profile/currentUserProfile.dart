import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/screens/home/imageProfile.dart';
import 'package:go_mama/screens/profile/calendar.dart';
import 'package:go_mama/screens/profile/editProfile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CurrentUserProfile extends StatefulWidget {
  @override
  _CurrentUserProfileState createState() => _CurrentUserProfileState();
}

class _CurrentUserProfileState extends State<CurrentUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          left: 70.0,
          right: 70.0,
          top: 80.0,
        ),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("Users")
                    .doc(FirebaseAuth.instance.currentUser.uid.toString())
                    .snapshots(),
                builder: (context, snapshot) {
                  return (snapshot.connectionState == ConnectionState.waiting)
                      ? Center(child: CircularProgressIndicator())
                      : Column(children: <Widget>[
                          ImageProfile(snapshot: snapshot),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Row(children: <Widget>[
                              Text(
                                "Name:",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  snapshot.data["Vorname"].toString() +
                                      " " +
                                      snapshot.data["Nachname"],
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 18)),
                                ),
                              )
                            ]),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(children: <Widget>[
                                Text(
                                  "Geburtsdatum:",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    snapshot.data["Geburtsdatum"].toString(),
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18)),
                                  ),
                                )
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(children: <Widget>[
                                Text(
                                  "PLZ:",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    snapshot.data["PLZ"].toString(),
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18)),
                                  ),
                                )
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(children: <Widget>[
                                Text(
                                  "Studiengang:",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    snapshot.data["Studiengang"].toString(),
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18)),
                                  ),
                                )
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(children: <Widget>[
                                Text(
                                  "Anzahl Kinder:",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    snapshot.data["Anzahl Kinder"].toString(),
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 18)),
                                  ),
                                ),
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(children: <Widget>[
                                Text(
                                  "Über mich:",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: SingleChildScrollView(
                                    child: Text(
                                      "",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ])),
                        ]);
                }),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: Text("Profil bearbeiten",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 16))),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EditProfil()))
                  },
                )),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Verfügbarkeiten",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: UserCalendar()
            ),
          ]),
        ),
      ),
    );
  }
}
