import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../loginHome/loginHome.dart';
import 'hilfe_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Finanzierung extends StatefulWidget {
  @override
  _FinanzierungState createState() => _FinanzierungState();
}

class _FinanzierungState extends State<Finanzierung> {
  
  
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
                        text: '\nElterngeld\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Bis zu 67% des Einkommens, welches man zuvor verdient hat, können gezahlt werden. Der Höchstbetrag.beträgt 1800 Euro im Monat. Wer vorher kein Einkommen hatte, bekommt 300 Euro. Der Betrag wirdhöchstens 14 Monate gezahlt.Weitere Informationen unter ',
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
                          launch('https://www.bmfsfj.de/bmfsfj/themen/familie/familienleistungen/elterngeld/elterngeld-und-elterngeldplus-73752');
                          
                        },
                    ),
                     TextSpan(
                        text: '\nKindergeld\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'In Deutschland kann jeder der Kinder hat und dessen Wohnsitz innerhalb Deutschland liegt Kindergeld beantragen. Für das erste Kind beträgt das Kindergeld aktuell 219 Euro im Monat. Außerdem bekommt man weiterhin für sich selbst Kindergeld, solange man unter 25 Jahre ist.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.arbeitsagentur.de/familie-und-kinder/downloads-kindergeld-kinderzuschlag');
                          
                        },
                    ),
                     TextSpan(
                        text: '\nBetreuungsgeld\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Das Betreuungsgeld kann man nach Ablauf der Dauer für Zahlungen des Elterngeldes beantragen. Es ist für eine Dauer von 22 Monaten oder bis zum 36. Monat des Kindes verfügbar und beträgt, seit August 2014, 150 Euro monatlich pro Kind. Betreuungsgeld bekommt nur, wer seine Kinder selbst betreut und keine Tageseinrichtung oder Tagespflege in Anspruch nimmt.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://betreuungsgeld24.de/betreuungsgeld-hessen/#:~:text=F%C3%BCr%20das%20Betreuungsgeld%20Hessen%20sind%20die%20%C3%84mter%20f%C3%BCr,Jahr%2C%20wurden%20in%20Hessen%20knapp%2023.000%20Antr%C3%A4ge%20genehmigt');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nKinderzuschlag\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Wer ein zu geringes Einkommen hat kann zusätzlich zum Kindergeld den Kinderzuschlag beantragen.Dabei erhält man einen Betrag bis zu 205 Euro monatlich für 6 Monate. Danach muss der Antrag erneut gestellt werden. Bei der Gewährleistung eines Kinderzuschlags profitiert man außerdem vom Erlass der Gebühren für den Kitaplatz.Anspruch ermitteln unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.arbeitsagentur.de/familie-und-kinder/kiz-lotse#:~:text=Der%20KiZ-Lotse%3A%20Anspruch%20auf%20Kinderzuschlag%20ermitteln%20Ob%20Sie,%28KiZ%29%20haben%2C%20finden%20Sie%20mit%20dem%20%22KiZ-Lotsen%22%20heraus');
                          
                        },
                    ),
                     TextSpan(
                        text: '\nMutterschaftsgeld\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Mutterschaftsgeld wird von der Krankenkasse bezahlt und man kann es nur dann bekommen, wenn man zuvor selbst versichert war. Für Studenten, die bei ihren Eltern mitversichert sind, gibt es kein Mutterschaftsgeld. Um Unterstützung zu bekommen, muss ein Antrag bei der Krankenkasse gestellt werden. Geld bekommt man dann ab sechs Wochen vor und bis acht Wochen nach der Geburt des Kindes.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.bmfsfj.de/bmfsfj/themen/familie/familienleistungen/mutterschaftsleistungen/mutterschaftsleistungen-im-ueberblick-73754');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nWohngeld\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'In bestimmten Fällen kannst du Wohngeld für dich und dein Kind beantragen. Dafür musst du bestimmteKriterien erfüllen.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.studierenplus.de/bildung-finanzieren/wohngeld-studenten/');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nArbeitslosengeld II\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Falls du kein Bafög bekommst, wäre es eine Überlegung wert in Teilzeit zu studieren, da man so nicht mehr Bafög förderfähig ist, wodurch man ein Recht auf Hartz 4 hat. Falls du selbst aber keinen Anspruch auf Arbeitslosengeld II hast, kannst du Sozialgeld vom Jobcenter für dein Kind erhalten.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.studentenwerke.de/de/arbeitslosengeld2');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nBAföG II\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Als Vollzeitstudentin hast du einen Anspruch auf Bafög, wenn die Eltern nicht in der Lage sind finanzielle Unterstützung anzubieten und man selbst nicht genug Kapital besitzt. Zusätzlich zu der ermittelten Förderungshöhe werden 150 Euro Betreuungszuschlag für das Kind gezahlt. Außerdem kann man über die Regelstudienzeit hinaus gefördert werden.Weitere Informationen unter ',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.bafög.de/de/bafoeg-fuer-auszubildende-mit-familienverantwortung-590.php');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nUnterhaltsvorschuss für Alleinerziehende II\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Wer keinen regelmäßigen Unterhalt vom anderen Elternteil bekommt kann einen Antrag auf Unterhaltsvorschuss stellen. Der monatliche Betrag ist vom Kindesalter abhängig. Für Kinder unter 5 Jahren erhält man 165 € monatlich.Weitere Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('');
                          
                        },
                    ),
                    TextSpan(
                        text: '\nStipendien\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      text: 'erste Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.boell.de/de/stiftung/stiftung');
                          
                        },
                    ),
                    TextSpan(
                      text: '\nzweite Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.bundesstiftung-mutter-und-kind.de/antragstellung');
                          
                        },
                    ),
                    TextSpan(
                      text: '\ndritte Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://campus.kas.de/registrierung');
                        },
                    ),
                     TextSpan(
                        text: '\nZinsfreie Darlehen unter: \n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      text: 'diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.hildegardis-verein.de/foerderung-wen-was-wie.html');
                          
                        },
                    ),
                     TextSpan(
                        text: '\nKfW\n',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    TextSpan(
                      
                        text:
                            'Wenn alles nicht hilft, kann man als letzten Ausweg einen Studienkredit in Erwägung ziehen. Dies ist unabhängig vom Einkommen und man muss auch keine Sicherheit hinterlegen. Jedoch ist dieser Kredit nicht zinsfrei, weshalb ich es wirklich nur in Notfällen empfehlen würde. Dabei werden bis zu 650 € monatlich ausgezahlt.Weiter Informationen unter',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        )),
                    TextSpan(
                      text: ' diesem Link',
                      style: GoogleFonts.poppins( textStyle: TextStyle(color: Colors.orange, fontSize: 15.0)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.kfw.de/inlandsfoerderung/Privatpersonen/Studieren-Qualifizieren/Finanzierungsangebote/KfW-Studienkredit-(174)/');
                          
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
/* padding: const EdgeInsets.only(
                  top: 40,
                  right: 20,
                  left: 20,
                  bottom: 20,
                  ), */
  /*Container(
              padding: const EdgeInsets.only(
                top: 10,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Text(
                    'Elterngeld:\nBis zu 67% des Einkommens, welches man zuvor verdient hat, können gezahlt werden. Der Höchstbetrag.beträgt 1800 Euro im Monat. Wer vorher kein Einkommen hatte, bekommt 300 Euro. Der Betrag wirdhöchstens 14 Monate gezahlt.Weitere Informationen unter https://www.bmfsfj.de/bmfsfj/themen/familie/familienleistungen/elterngeld/elterngeld-undelterngeldplus-73752Kindergeld In Deutschland kann jeder der Kinder hat und dessen Wohnsitz innerhalb Deutschland liegt Kindergeldbeantragen. Für das erste Kind beträgt das Kindergeld aktuell 219 Euro im Monat. Außerdem bekommtman weiterhin für sich selbst Kindergeld, solange man unter 25 Jahre ist.'),
              )
              )*/