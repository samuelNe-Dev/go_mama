import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/screens/home/imageProfile.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfil extends StatefulWidget {
  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  String _firstName, _lastName, _birthday, _plz, _major, _amountChildren = "";
  String _imageURL = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Mama"),
      ),
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
                  if (!snapshot.hasData) return Text('...');
                  return Column(children: <Widget>[
                    ImageProfile(snapshot: snapshot),
                    TextFormField(
                      initialValue: snapshot.data["Vorname"].toString(),
                      decoration: InputDecoration(labelText: "Vorname: "),
                      onChanged: (value) {
                        setState(() {
                          _firstName = value.trim();
                        });
                      },
                    ),
                    TextFormField(
                      initialValue: snapshot.data["Nachname"].toString(),
                      decoration: InputDecoration(labelText: "Nachname: "),
                      onChanged: (value) {
                        setState(() {
                          _lastName = value.trim();
                        });
                      },
                    ),
                    TextFormField(
                      initialValue: snapshot.data["Geburtsdatum"].toString(),
                      decoration: InputDecoration(labelText: "Geburtsdatum: "),
                      onChanged: (value) {
                        setState(() {
                          _birthday = value.trim();
                        });
                      },
                    ),
                    TextFormField(
                      initialValue: snapshot.data["PLZ"].toString(),
                      decoration: InputDecoration(labelText: "PLZ: "),
                      onChanged: (value) {
                        setState(() {
                          _plz = value.trim();
                        });
                      },
                    ),
                    TextFormField(
                      initialValue: snapshot.data["Studiengang"].toString(),
                      decoration: InputDecoration(labelText: "Studiengang: "),
                      onChanged: (value) {
                        setState(() {
                          _major = value.trim();
                        });
                      },
                    ),
                    TextFormField(
                      initialValue: snapshot.data["Anzahl Kinder"].toString(),
                      decoration: InputDecoration(labelText: "Anzahl Kinder: "),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          _amountChildren = value.trim();
                        });
                      },
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.save,
                            size: 30,
                          ),
                          label: Text("Speichern",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 16))),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () async {
                            await updateUserInfo(
                                _firstName ?? snapshot.data["Vorname"],
                                _lastName ?? snapshot.data["Nachname"],
                                _birthday ?? snapshot.data["Geburtstag"],
                                _plz ?? snapshot.data["PLZ"],
                                _major ?? snapshot.data["Studiengang"],
                                _amountChildren ??
                                    snapshot.data["Anzahl Kinder"],
                                _imageURL ?? snapshot.data["ImageURL"]);
                                Navigator.pop(context);
                          },
                        ))
                  ]);
                }),
          ]),
        ),
      ),
    );
  }

  Future<void> updateUserInfo(String firstName, String lastName, String birthday,
      String plz, String major, String amountChildren, String imageURL) async {
    CollectionReference users = FirebaseFirestore.instance.collection("Users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    await users.doc(uid).update({
      "Vorname": firstName,
      "Nachname": lastName,
      "Geburtsdatum": birthday,
      "Studiengang": major,
      "PLZ": plz,
      "Anzahl Kinder": amountChildren,
      "ImageURL": imageURL,
    }).then((_) => print('Updated'))
    .catchError((error) => print('Update failed'));
  }
}
