import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';
import 'package:manga_reader_flutter/screens/details/details_page.dart';

class ChapterCard extends StatefulWidget {
  final Manga manga;
  final bool isDark;

  const ChapterCard({
    Key key,
    @required this.manga,
    @required this.isDark,
  }) : super(key: key);
  @override
  _ChapterCardState createState() => _ChapterCardState();
}

class _ChapterCardState extends State<ChapterCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(width: 3),
                image: DecorationImage(
                  image: AssetImage(
                    widget.manga.thumbImage == ''
                        ? 'assets/images/header.jpg'
                        : widget.manga.thumbImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      manga: widget.manga,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.manga.title ?? 'Dragon Ball',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: widget.isDark ? Colors.white : Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Chapter ${widget.manga.lastChapter}',
                      style: TextStyle(
                        fontSize: 15,
                        color:
                            widget.isDark ? Colors.blue[300] : Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.orange,
                  ),
                  Stack(
                    children: <Widget>[
                      Text(
                        widget.manga.score.toString() ?? '9.8',
                        style: TextStyle(
                          fontFamily: 'Anime Ace',
                          fontSize: 16,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.white,
                        ),
                      ),
                      Text(
                        widget.manga.score.toString() ?? '9.8',
                        style: TextStyle(
                          fontFamily: 'Anime Ace',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
