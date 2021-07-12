import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_mama/screens/home/home.dart';
import 'package:go_mama/screens/register/registration.dart';
import 'package:google_fonts/google_fonts.dart';

/*
This is the starting screen of the App with a login possibility 
+ a way to go to the registration screen.
*/

class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  String _email, _password = "";
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Go Mama")),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
          ),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Image.asset("images/Go-Mama-logo.jpg", width: 300.0, height: 300.0),
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text("Log dich ein!", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Email - Adresse: ",
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0)
                    )
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Passwort: ",
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0)
                    )
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                  icon: Icon(
                    Icons.arrow_right,
                    size: 30,
                  ),
                  label: Text("Login", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16))),
                  onPressed: () => _signin(_email, _password),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextButton(
                  child: Text(
                    "Noch kein Account? Klicke hier um zur Registrierung zu kommen!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16))
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                )),
          ])),
        ));
  }

  _signin(String _email, String _password) async {
    try {
      await auth.signInWithEmailAndPassword(email: _email, password: _password);
      //Success
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));

    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(msg: error.message, gravity: ToastGravity.TOP);
    }
  }
}
