import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Finanzierung.dart';
import 'hilfe_page.dart';

class Hilfe_finanzierung extends StatefulWidget {
  @override
  _Hilfe_finanzierungState createState() => _Hilfe_finanzierungState();
}

class _Hilfe_finanzierungState extends State<Hilfe_finanzierung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[400],
        appBar: AppBar(
          title: Text('Go Mama'),
          backgroundColor: Colors.orange[600],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //Container 1

              Container(
                padding: const EdgeInsets.only(
                  top: 40,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                color: Colors.orange[400],
                child: RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Finanzierung\n\n',
                        style: GoogleFonts.stintUltraCondensed(
                          textStyle: TextStyle(
                            color: Colors.purple,
                            fontSize: 35.0,
                          ),
                        )),
                    TextSpan(
                        text:
                            'Falls Sie Schwierigkeiten beim Finanzierung haben oder keine Ahnung, wie man sich finanzieren kann,dann klicken Sie  ',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        )),
                    TextSpan(
                        text: 'Hier',
                        style: TextStyle(color: Colors.purple, fontSize: 20.0),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Finanzierung()));
                          }),
                  ],
                )),
              ),

              // Container 2

              Container(
                padding: const EdgeInsets.only(
                  top: 80,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                color: Colors.orange[400],
                child: RichText(
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hilfe\n\n',
                        style: GoogleFonts.stintUltraCondensed(
                          textStyle: TextStyle(
                            color: Colors.purple,
                            fontSize: 35.0,
                          ),
                        )),
                    TextSpan(
                        text:
                            'Falls Sie Hilfe oder Beratung brauchen, haben wir Links dafür bereit gestellt. Für weitere Informationen klicken Sie  ',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        )),
                    TextSpan(
                        text: 'Hier',
                        style: TextStyle(color: Colors.purple, fontSize: 20.0),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Hilfe()));
                          }),
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
