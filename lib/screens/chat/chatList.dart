import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_mama/helperFiles/firestore.dart';
import 'package:go_mama/screens/chat/chatScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  bool isSearching = false;
  Stream usersStream;

  TextEditingController searchUserNameEditingController =
      TextEditingController();

  QuerySnapshot searchSnapshot;

  onSearchBtnClick() async {
    isSearching = true;
    setState(() {});
    getUserByName(searchUserNameEditingController.text).then((value) {
      setState(() {
        searchSnapshot = value;
      });
    });
  }

  //create chatromm, send user to conversation screen
  createChatStartConvo(
      {String myVorname,
      String myNachname,
      String otherVorname,
      String otherNachname}) {
    String otherFullName = otherVorname + " " + otherNachname;

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChatScreen(otherUserFullName: otherFullName,)));
  }

  Widget SearchTile(
      {String userProfilImage, String userVorname, String userNachname}) {
    return Container(
      child: SingleChildScrollView(
        child: Row(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: CircleAvatar(
                    radius: 30.0, backgroundImage: AssetImage(userProfilImage)),
              ),
              SizedBox(width: 12),
              Text(
                userVorname + " " + userNachname,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              createChatStartConvo(
                  otherNachname: userNachname,
                  otherVorname: userVorname);
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Message",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ),
        ]),
      ),
    );
  }

  @override
  void initState() {
    onSearchBtnClick();
    super.initState();
  }

  Widget searchUserList() {
    return ListView.builder(
      itemCount: searchSnapshot.docs.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        if (searchSnapshot.docs == null) {
          return CircularProgressIndicator();
        }

        return SearchTile(
          userProfilImage: searchSnapshot.docs[index]["ImageURL"],
          userVorname: searchSnapshot.docs[index]["Vorname"],
          userNachname: searchSnapshot.docs[index]["Nachname"],
        );

        // return Image.network(ds["ImageURL"], height: 30, width: 30);
      },
    );
  }

  Widget chatRoomsList() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Row(children: [
              isSearching
                  ? GestureDetector(
                      onTap: () {
                        isSearching = false;
                        searchUserNameEditingController.text = "";
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(Icons.arrow_back),
                      ),
                    )
                  : Container(),
              SizedBox(width: 12),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.4,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(children: [
                    Expanded(
                        child: TextField(
                      controller: searchUserNameEditingController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Namen eingeben",
                      ),
                    )),
                    GestureDetector(
                        onTap: () {
                          if (searchUserNameEditingController.text != "") {
                            onSearchBtnClick();
                          }
                        },
                        child: Icon(Icons.search)),
                  ]),
                ),
              ),
            ]),
            isSearching ? searchUserList() : chatRoomsList()
          ])),
    );
  }
}
