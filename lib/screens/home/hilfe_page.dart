import 'package:flutter/material.dart';

class Hilfe extends StatefulWidget {
  @override
  _HilfeState createState() => _HilfeState();
}

class _HilfeState extends State<Hilfe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hilfe Page'),
      ),
      body: Container(
        child: Text(
            'Elterngeld Bis zu 67% des Einkommens, welches man zuvor verdient hat, k'),
      ),
    );
  }
}
