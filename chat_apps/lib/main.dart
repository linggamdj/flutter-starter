import 'package:flutter/material.dart';
// import 'pages/home_page.dart';
import 'pages/message_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MessagePage(),
    );
  }
}
