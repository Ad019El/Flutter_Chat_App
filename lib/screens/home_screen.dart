import 'package:first_app/models/message_model.dart';
import 'package:first_app/widgets/category_selector.dart';
import 'package:first_app/widgets/favorite_contact.dart';
import 'package:first_app/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 28.0,
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          "Chats",
          style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        )),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 28.0,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),

          // category widget
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: [
                  FavoriteContacts(), // favorite widget
                  RecentChats(), // all chats
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
