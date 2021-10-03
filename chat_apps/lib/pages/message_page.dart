import 'package:flutter/material.dart';
import 'package:chat_apps/theme.dart';
import 'package:chat_apps/widgets/msg_tile.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/group_1.png',
                      width: 55,
                      height: 55,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jakarta Fair", style: titleTextStyle),
                        Text("14,209 members", style: subtitleTextStyle),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.call),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    MessageTile(),
                    MessageTile(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        top: 30,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 11, horizontal: 30),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Thinking about how\nto deal with this...",
                                  style: TextStyle(
                                      color: darkGeryColor, fontSize: 16),
                                ),
                                Text(
                                  "2:30",
                                  style: subtitleTextStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'assets/images/chat_3.png',
                            width: 40,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    MessageTile(),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 30,
                  right: 30,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Type message ...",
                        style: TextStyle(color: darkGrayColor),
                      ),
                      Spacer(),
                      Icon(Icons.send_rounded),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
