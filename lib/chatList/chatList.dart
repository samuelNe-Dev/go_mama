import 'package:flutter/material.dart';

/*
This is the messages screen where you can see all the chats, did before, in a list.
The user can click on a chat and gets to the chat screen.
*/

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Go Mama"))),
      body: Center(
        child: Text("ChatList"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        unselectedFontSize: 15,
        selectedFontSize: 17,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Karte",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Nachrichten",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Hilfe",
            backgroundColor: Colors.orange,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
