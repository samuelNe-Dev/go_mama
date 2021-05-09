import 'package:flutter/material.dart';
import 'package:go_mama/loginHome/loginHome.dart';

/*
This displays the registration screen. If the registration is fully admitted,
the user gets back to the starting - login page.
*/

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Go Mama"))),
        body: Container(
          margin: const EdgeInsets.only(left: 70.0, right: 70.0, top: 80.0,),
          child: SingleChildScrollView( child: Column(children: <Widget>[
            Padding(padding: const EdgeInsets.only(bottom: 70), child: Text("Registrierung", style: TextStyle( fontSize: 40))),
            TextField(
              decoration: InputDecoration(labelText: "Vorname: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Nachname: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Studentische Email - Addresse: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Benutzername: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Passwort: "),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Passwort bestätigen: "),
            ),
            Padding(padding: const EdgeInsets.only(top: 70), child: ElevatedButton.icon(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginHome()));
              },
              icon: Icon(Icons.arrow_right, size: 30,),
              label: Text("Registrieren", style: TextStyle(fontSize: 16))
            )),
          ])),
        ));
  }
}