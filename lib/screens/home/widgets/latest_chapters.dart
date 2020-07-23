import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';
import 'package:manga_reader_flutter/screens/home/widgets/chapter_card.dart';

class LatestChapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'LATEST CHAPTERS',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  // fontWeight: FontWeight.bold,
                  fontFamily: "Anime Ace",
                ),
              ),
              Container(
                height: 50,
                child: Image.asset(
                  'assets/images/more_icon.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (var manga in mangaList)
                  ChapterCard(
                    manga: manga,
                    isDark: false,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
