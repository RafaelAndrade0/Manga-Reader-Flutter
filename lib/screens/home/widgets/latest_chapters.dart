import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';
import 'package:manga_reader_flutter/screens/home/widgets/chapter_card.dart';

class LatestChapters extends StatefulWidget {
  final Size size;

  const LatestChapters({Key key, @required this.size}) : super(key: key);

  @override
  _LatestChaptersState createState() => _LatestChaptersState();
}

class _LatestChaptersState extends State<LatestChapters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
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
            height: widget.size.height * .4,
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
