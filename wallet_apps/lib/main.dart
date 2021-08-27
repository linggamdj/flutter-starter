import 'package:flutter/material.dart';
import 'font_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("E-Walley"),
              backgroundColor: Colors.red,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.mail), onPressed: () {})
              ],
            ),
            body: SafeArea(
                child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_mail.png"),
                          height: 250,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Your Balance Has Been Added!",
                            style: header,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )))));
  }
}
