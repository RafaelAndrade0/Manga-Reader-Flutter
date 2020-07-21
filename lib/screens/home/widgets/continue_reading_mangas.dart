import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/screens/home/widgets/chapter_card.dart';

class ContinueReadingMangas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      padding: EdgeInsets.all(10),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'CONTINUE READING',
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 2,
              color: Colors.white,
              fontFamily: "Anime Ace",
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ChapterCard(),
                ChapterCard(),
                ChapterCard(),
                ChapterCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
