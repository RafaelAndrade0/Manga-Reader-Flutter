import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';

class ChapterCard extends StatefulWidget {
  final Manga manga;

  const ChapterCard({Key key, @required this.manga}) : super(key: key);
  @override
  _ChapterCardState createState() => _ChapterCardState();
}

class _ChapterCardState extends State<ChapterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/header.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            widget.manga?.title ?? 'Dragon Ball',
            style: TextStyle(
              fontSize: 20, letterSpacing: 2,
              // fontFamily: "Anime Ace",
            ),
          ),
          Text(
            'Chapter 280',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.yellow[900],
              ),
              Text(
                '9,8',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
