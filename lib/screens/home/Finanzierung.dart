import 'package:flutter/material.dart';
import 'hilfe_page.dart';

class Finanzierung extends StatefulWidget {
  @override
  _FinanzierungState createState() => _FinanzierungState();
}

class _FinanzierungState extends State<Finanzierung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finanzierung'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          //Container 1

          Container(
              padding: const EdgeInsets.only(
                top: 155,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              color: Colors.blue[400],
              child: SingleChildScrollView(
                child: Text(
                    'Elterngeld Bis zu 67% des Einkommens, welches man zuvor verdient hat, können gezahlt werden. Der Höchstbetrag.beträgt 1800 Euro im Monat. Wer vorher kein Einkommen hatte, bekommt 300 Euro. Der Betrag wirdhöchstens 14 Monate gezahlt.Weitere Informationen unter https://www.bmfsfj.de/bmfsfj/themen/familie/familienleistungen/elterngeld/elterngeld-undelterngeldplus-73752Kindergeld In Deutschland kann jeder der Kinder hat und dessen Wohnsitz innerhalb Deutschland liegt Kindergeldbeantragen. Für das erste Kind beträgt das Kindergeld aktuell 219 Euro im Monat. Außerdem bekommtman weiterhin für sich selbst Kindergeld, solange man unter 25 Jahre ist.'),
              ))
        ],
      )),
    );
  }
}
/* padding: const EdgeInsets.only(
                  top: 40,
                  right: 20,
                  left: 20,
                  bottom: 20,
                  ), */
