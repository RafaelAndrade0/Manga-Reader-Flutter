import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_description.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_last_chapter.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_summary.dart';

class MangaInformation extends StatelessWidget {
  const MangaInformation({
    Key key,
    @required this.manga,
  }) : super(key: key);

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CardSummary(
          size: size,
          manga: manga,
        ),
        CardDescription(
          size: size,
          manga: manga,
        ),
        CardLastChapter(size: size),
      ],
    );
  }
}
