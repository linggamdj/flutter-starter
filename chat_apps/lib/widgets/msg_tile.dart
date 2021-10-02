import 'package:flutter/material.dart';
import 'package:chat_apps/theme.dart';

class MessageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30,
        top: 30,
        right: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/chat_1.png',
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 30),
            decoration: BoxDecoration(
              color: lightGrayColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How are you guys?",
                  style: TextStyle(color: darkGeryColor, fontSize: 16),
                ),
                Text(
                  "2:30",
                  style: subtitleTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
