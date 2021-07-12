import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Hilfe extends StatefulWidget {
  @override
  _HilfeState createState() => _HilfeState();
}

class _HilfeState extends State<Hilfe> {
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
                Get.back();
              },
            ),
          ],
        ),
       body: SingleChildScrollView(
          child: Column(

        children: <Widget>[
          //Container 1
           Container(
                /*margin: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 40.0,
                ),*/
                padding: const EdgeInsets.only(
                  top:0,
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                color: Colors.white,
                
                  child: RichText(
                    
                    text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: '\nKinderbetreuung\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Krabbelstube; die Frankfurt University of Applied Sciences hat eine Krabbelstube mit insgesamt 22 Plätzen. Die Plätze werden nach bestimmten Kriterien vergeben. Unter anderem spielt hierbei eine Rolle, wo man wohnt.Weshalb hier das Prinzip „Wer zuerst kommt, mahlt zuerst“ nicht funktioniert. Studierende, die außerhalb Frankfurts wohnen sollten, daher direkt nach der Geburt auch schon nach Plätzen in Kindertagesstätten in ihrer Umgebung Ausschau halten.Flexible Betreuung Für diejenigen die nirgendwo einen Platz ergattert haben können eine flexible Betreuung in Anspruch nehmen. Die Kosten hierfür sind 2,50€ pro Stunde.Genauere Informationen sowie den Anmeldebogen findet man unter  ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: 'diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.kfw.de/inlandsfoerderung/Privatpersonen/Studieren-Qualifizieren/Finanzierungsangebote/KfW-Studienkredit-(174)/');
                          
                        },
                    ),

                    TextSpan(
                        text: '\nUrlaubssemester\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Wer eine Auszeit braucht kann aufgrund von Mutterschutz oder Elternzeit ein Urlaubssemester beantragen. Der Vorteil hierbei ist, dass man weiterhin alle Prüfungen mitschreiben darf und vor allem kann man die Zeit auch nutzen, um seinem Leistungsnachweis nachzukommen, welcher für die Beantragung von Bafög in höheren Semestern benötigt wird. Jedoch muss man beachten, dass während dem Urlaubssemester die Förderung vom Bafögamt entfällt. Dies wiederum bedeutet, dass man womöglich einen Anspruch auf Arbeitslosengeld II hat.Antrag unter  ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: 'diesem Link.',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.frankfurt-university.de/fileadmin/standard/Studium/Studienbuero/Beurlaubung-Studierende-Antrag.pdf');
                          
                        },
                    ),
                    TextSpan(
                      
                        text:
                            ' Abgabe per Mail bei Frau Danek unter: danek@abt-sb.fra-uas.de  ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                        text: '\nFamilienbüro\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Bei weitere Fragen oder für eine ausführliche Beratung kann man sich an das Familienbüro wenden. Sie helfen einem immer gerne weiter. für weiter Info dafür unter: familienbuero@diversity.fra-uas.de',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    
                    TextSpan(
                      text: '\nWeitere Informationen ',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.frankfurt-university.de/de/hochschule/einrichtungen-und-services/leitung-und-zentrale-verwaltung/familienbuero/');
                          
                        },
                    ),


                  ],
                    )
                  ),
           ),
        ],
          )
       )
    );
  }
}
