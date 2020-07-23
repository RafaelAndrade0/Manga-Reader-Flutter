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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.blue[800]],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "INFORMATION",
                          style: TextStyle(
                            fontFamily: "Anime Ace",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "CHAPTERS",
                          style: TextStyle(
                            fontFamily: "Anime Ace",
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          MangaInformation(),
          MangaChapters(),
        ]),
      ),
    );
  }
}
