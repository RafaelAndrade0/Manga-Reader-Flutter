import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_description.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_last_chapter.dart';
import 'package:manga_reader_flutter/screens/details/manga_information/widgets/card_summary.dart';

class MangaInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          CardSummary(size: size),
          CardDescription(size: size),
          CardLastChapter(size: size),
        ],
      ),
    );
  }
}
