import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/image.jpg'),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nusanville Beach Resort',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Cilacap Jawa Tengah',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.orange,
                        size: 24.0,
                      ),
                      Text(
                        '4.2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 24.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('CALL',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blue,
                        size: 24.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('ROUTE',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                        size: 24.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('SHARE',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue nibh, id gravida urna vestibulum vel. Proin aliquet suscipit faucibus. Fusce et ligula non metus pellentesque vulputate eget ut metus. Cras varius non lectus fringilla laoreet. Vestibulum accumsan mauris eget velit hendrerit laoreet. Nulla porttitor erat et sodales tempus. Maecenas ut blandit nunc.\n\nSed dignissim fringilla erat, at convallis erat pellentesque ac. Nulla maximus pellentesque dictum. Duis viverra massa quis commodo pulvinar. Etiam lectus erat, pharetra et velit id, pellentesque venenatis risus. Nullam tempor faucibus dictum. Etiam id scelerisque ex. Vestibulum diam quam, vehicula non mi sit amet, varius sagittis purus',
                style: TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
