import 'package:flutter/material.dart';
import 'package:go_mama/home/home.dart';
import 'package:go_mama/register/registration.dart';

/*
This is the starting screen of the App with a login possibility 
+ a way to go to the registration screen.
*/

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Go Mama"))),
        body: Container(
          margin: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
          ),
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Image.asset("images/Go-Mama-logo.jpg", width: 300.0, height: 300.0),
            Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Text("Log dich ein!", style: TextStyle(fontSize: 30))),
            TextField(
              decoration: InputDecoration(labelText: "Email - Adresse: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Passwort: "),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    icon: Icon(
                      Icons.arrow_right,
                      size: 30,
                    ),
                    label: Text("Login", style: TextStyle(fontSize: 16)))),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextButton(
                  child: Text(
                    "Noch kein Account? Klicke hier um zur Registrierung zu kommen!",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                )),
          ])),
        ));
  }
}
