import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../loginHome/loginHome.dart';

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
      body: Container(
        child: Text(
            'Elterngeld Bis zu 67% des Einkommens, welches man zuvor verdient hat, k'),
      ),
    );
  }
}
