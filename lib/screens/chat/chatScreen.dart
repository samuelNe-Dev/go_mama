import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:go_mama/helperFiles/sharedPreferencesHelper.dart';

class ChatScreen extends StatefulWidget {
  final String otherUserFullName;
  const ChatScreen({Key key, this.otherUserFullName}) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String chatRoomId, messageId = "";
  String myVorname, myNachname, myProfilImage;

  getMyInfoFromSharedPreference() async {
    myVorname = await SharedPreferenceHelper.getVornameSharedPreference();
    myNachname = await SharedPreferenceHelper.getNachnameSharedPreference();
    myProfilImage = await SharedPreferenceHelper.getImageURLSharedPreference();

    chatRoomId = getChatRoomIdByName(
        widget.otherUserFullName, myVorname + " " + myNachname);
  }

  getChatRoomIdByName(String a, String b) {
    if (a.substring(0, 1).codeUnitAt(0) > b.substring(0, 1).codeUnitAt(0)) {
      return "$b\_$a";
    } else {
      return "$a\_$b";
    }
  }

  addMessage(bool sendClicked){
    
  }

  getAndSetMessages() async {}

  doThisOnLaunch() async {
    await getMyInfoFromSharedPreference();
  }

  @override
  void initState() {
    doThisOnLaunch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.otherUserFullName),
      ),
      body: Container(
        child: Stack(children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.orange.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Schreibe eine Nachricht",
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.6))
                    ),
                  )),
                  Icon(Icons.send),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
