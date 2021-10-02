import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 32,
              right: 32,
            ),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/goal.png',
                  width: 267,
                  height: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Upgrade to ",
                      style: titleTextStyle,
                    ),
                    Text(
                      "Pro",
                      style: titleTextStyleBlue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Go unlock all featurs and\nBuild your own business bigger",
                  style: subTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
