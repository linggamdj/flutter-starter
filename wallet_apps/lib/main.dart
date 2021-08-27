import 'package:flutter/material.dart';

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
                    margin: EdgeInsets.only(left: 55.0),
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_mail.png"),
                          height: 250,
                        ),
                        Text("Your Balance Has Been Added!"),
                      ],
                    )))));
  }
}
