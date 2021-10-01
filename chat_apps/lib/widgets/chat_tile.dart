import 'package:flutter/widgets.dart';
import 'package:chat_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  // Constructor
  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
