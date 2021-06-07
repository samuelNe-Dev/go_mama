import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_mama/firestore.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';
import 'package:go_mama/screens/verify/verify.dart';
import 'package:google_fonts/google_fonts.dart';

/*
This displays the registration screen. If the registration is fully admitted,
the user gets back to the starting - login page.
*/

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String _email, _password, _passwordRepeat = "";
  String _firstName, _lastName, _birthday, _major, _amountChildren = "";

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Go Mama")),
          actions: [
            TextButton(
              child: Text("Back"),
              style: TextButton.styleFrom(primary: Colors.black),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginHome()));
              },
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 80.0,
          ),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text("Registrierung", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)))),
            TextFormField(
              decoration: InputDecoration(labelText: "Vorname: "),
              onChanged: (value) {
                setState(() {
                  _firstName = value.trim();
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Name: "),
              onChanged: (value) {
                setState(() {
                  _lastName = value.trim();
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Geburtsdatum: "),
              onChanged: (value) {
                setState(() {
                  _birthday = value.trim();
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Studiengang: "),
              onChanged: (value) {
                setState(() {
                  _major = value.trim();
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Anzahl Kinder: "),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _amountChildren = value.trim();
                });
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: "Studentische Email - Addresse: "),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Passwort: "),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Passwort bestätigen: "),
              onChanged: (value) {
                setState(() {
                  _passwordRepeat = value.trim();
                });
              },
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    label: Text("Registrieren", style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                    onPressed: () => {
                          if (_email.contains("@stud.fra-uas.de")){
                              if(_password == _passwordRepeat){
                                _signup(_email, _password)
                              }
                              else{
                                Fluttertoast.showToast(msg: "Passwort wurde nicht korrekt wiederholt!")
                              }

                            }
                          else
                            {
                              Fluttertoast.showToast(
                                msg:
                                    "Bitte geben Sie eine studentische Email ein. (UAS Frankfurt)",
                              )
                            }
                        })),
          ])),
        ));
  }

  _signup(String _email, String _password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      userSetup(_firstName, _lastName, _birthday, _major, _amountChildren);
      //Success

      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Verify()));
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }
}
