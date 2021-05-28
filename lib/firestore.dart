import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> userSetup(String firstName, String lastName, String birthday,String major) async {
  CollectionReference users = FirebaseFirestore.instance.collection("Users");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  users.doc(uid).set({ 
    "Vorname" : firstName,
    "Nachname" : lastName,
    "Geburtsdatum" : birthday,
    "Studiengang" : major,
  });
  print(uid + ", " + firstName + ", " + lastName + ", " + birthday + ", " + major);
  return;
}