import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/screens/details/widgets/manga_information.dart';
import 'package:manga_reader_flutter/screens/details/widgets/manga_chapters.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffafafa),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: 'Information',
              ),
              Tab(
                text: 'Chapters',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Icon(Icons.directions_transit),
            MangaInformation(),
            MangaChapters(),
          ],
        ),
      ),
    );
  }
}
