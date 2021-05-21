import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/screens/home/home.dart';
import 'package:go_mama/screens/loginHome/loginHome.dart';

/*
The main function is the first thing running, after running flutter or the dart file.
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Go Mama",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
