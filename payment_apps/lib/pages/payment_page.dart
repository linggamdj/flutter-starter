import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 32,
          right: 32,
          bottom: 20,
        ),
        child: Column(
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
      );
    }

    Widget option(int index, String title, String desc, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(
            left: 20,
            top: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: darkBlue,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: selectedIndex == index ? lightBlue : whiteColor,
            ),
          ),
          child: Row(
            children: [
              selectedIndex == index
                  ? Image.asset('assets/images/icon_true.png')
                  : Image.asset(
                      'assets/images/icon_false.png',
                      width: 18,
                      height: 18,
                    ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: planTextStyle),
                  Text(desc, style: descTextStyle),
                ],
              ),
              Spacer(),
              Text(price, style: priceTextStyle),
            ],
          ),
        ),
      );
    }

    Widget button() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: lightBlue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "Checkout Now",
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              header(),
              option(
                0,
                "Monthly",
                "Good for starting up",
                "\$20",
              ),
              option(
                1,
                "Quarterly",
                "Focusing on building",
                "\$55",
              ),
              option(
                2,
                "Yearly",
                "Ur Mom",
                "\$42069",
              ),
              selectedIndex == -1
                  ? SizedBox(
                      height: 30,
                    )
                  : button(),
            ],
          ),
        ),
      ),
    );
  }
}
