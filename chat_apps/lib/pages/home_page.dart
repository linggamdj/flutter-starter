import 'package:flutter/material.dart';
import 'package:chat_apps/theme.dart';
import 'package:chat_apps/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(fontSize: 20, color: lightBlueColor),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_1.png',
                        name: 'Joshuer',
                        text: "Sorry, you're not my type.",
                        time: "Now",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend_2.png',
                        name: 'Gabriella',
                        text: "I saw it clearly and mig...",
                        time: "2:30",
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_1.png',
                        name: 'Jakarta Fair',
                        text: "Why does everyone ca...",
                        time: "11:11",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_2.png',
                        name: 'Angga',
                        text: "Here here we can go...",
                        time: "7:30",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_3.png',
                        name: 'Bentley',
                        text: "The car which does not...",
                        time: "9:15",
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
