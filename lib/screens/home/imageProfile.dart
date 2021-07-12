import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class ImageProfile extends StatefulWidget {
  AsyncSnapshot snapshot;

  ImageProfile({Key key, this.snapshot}) : super(key: key);
  @override
  _ImageProfileState createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  File _chosenImage;

  CollectionReference imageRef;
  firebase_storage.Reference ref;

  final ImagePicker picker = ImagePicker();

  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 100.0,
          backgroundImage: _chosenImage == null
              ? AssetImage(widget.snapshot.data["ImageURL"].toString())
              : FileImage(File(_chosenImage.path)),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: ((builder) => bottomsheet()),
            );
          },
          child: Positioned(
            bottom: 20.0,
            right: 30.0,
            child: Icon(
              Icons.camera_alt,
              color: Colors.orange,
              size: 35.0,
            ),
          ),
        ),
      ]),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage = await picker.getImage(
      source: source,
    );
    setState(() {
      _chosenImage = File(pickedImage.path);
    });
  }

  Widget bottomsheet() {
    return Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(children: <Widget>[
          Text(
            "Wähle Profilbild",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 20.0,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text(
                "Kamera",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 16.0,
                )),
              ),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text(
                "Galerie",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 16.0,
                )),
              ),
            )
          ]),
        ]));
  }

  Future uploadFile() async {
    ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('images/${_chosenImage.path}');

      await ref.putFile(_chosenImage).whenComplete(() async {
        await ref.getDownloadURL().then((value){
          imageRef.add({'url': value, 'name': _chosenImage.path});
        });
      });
  }
  @override
  void initState() {
    super.initState();
    imageRef = FirebaseFirestore.instance.collection('Users');
  }
}