import 'package:flutter/material.dart';
import 'package:chat_apps/theme.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreyColor,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: greenColor,
      //   child: Icon(Icons.phone, size: 35),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: whiteColor,
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
                      Text("14,209 members", style: subtitleTextStyle)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
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
            )
          ],
        ),
      ),
    );
  }
}
