import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

Future<void> userSetup(String firstName, String lastName, String birthday,
    String plz, String major, String amountChildren, String imageURL) async {
  CollectionReference users = FirebaseFirestore.instance.collection("Users");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();

  GeoPoint geoLocation = GeoPoint(-1, -1);
  var response = await http
      .get(Uri.parse('https://thezipcodes.com/api/v1/search?zipCode=$plz'
          '&countryCode=DE&apiKey=24d4c00a7dbb1a164ef2c19a6bc8fb61'));
  if (response.statusCode == 200) {
    var res = json.decode(response.body);
    double latitude = double.parse(res["location"][0]["latitude"]);
    double longitude = double.parse(res["location"][0]["longitude"]);
    geoLocation = GeoPoint(latitude, longitude);
  }

  users.doc(uid).set({
    "Vorname": firstName,
    "Nachname": lastName,
    "Geburtsdatum": birthday,
    "Studiengang": major,
    "PLZ": plz,
    "GeoLocation": geoLocation,
    "Anzahl Kinder": amountChildren,
    "ImageURL": null
  });
  return;
}

Future<QuerySnapshot> getUserByName(String vorname) async {
  return FirebaseFirestore.instance
      .collection("Users")
      .where("Vorname", isEqualTo: vorname)
      .get();
}

Future createChat(String chatID, chatMap) async {
  FirebaseFirestore.instance
      .collection("Chat")
      .doc(chatID)
      .set(chatMap)
      .catchError((e) {
    print(e);
  });
}
