import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';
import 'package:manga_reader_flutter/screens/home/widgets/chapter_card.dart';

class ContinueReadingMangas extends StatefulWidget {
  final Size size;

  const ContinueReadingMangas({Key key, @required this.size}) : super(key: key);
  @override
  _ContinueReadingMangasState createState() => _ContinueReadingMangasState();
}

class _ContinueReadingMangasState extends State<ContinueReadingMangas> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      color: Colors.blue[800],
      padding: EdgeInsets.all(10),
      child: Column(
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
            height: widget.size.height * .4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for (var manga in mangaList)
                  ChapterCard(
                    manga: manga,
                    isDark: true,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
