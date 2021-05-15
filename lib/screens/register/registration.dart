import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';
import 'package:go_mama/screens/verify/verify.dart';

/*
This displays the registration screen. If the registration is fully admitted,
the user gets back to the starting - login page.
*/

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String _email, _password = "";
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
                padding: const EdgeInsets.only(bottom: 70),
                child: Text("Registrierung", style: TextStyle(fontSize: 40))),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Vorname: "),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Name: "),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Geburtsdatum: "),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Studiengang: "),
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
            ),
            Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    label: Text("Registrieren", style: TextStyle(fontSize: 16)),
                    onPressed: () => {
                          if (_email.contains("@stud.fra-uas.de"))
                            {_signup(_email, _password)}
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

      //Success
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Verify()));
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }
}
