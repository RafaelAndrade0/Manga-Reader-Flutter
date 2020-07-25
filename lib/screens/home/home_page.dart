import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/screens/home/widgets/characters.dart';
import 'package:manga_reader_flutter/screens/home/widgets/continue_reading_mangas.dart';
import 'package:manga_reader_flutter/screens/home/widgets/header.dart';
import 'package:manga_reader_flutter/screens/home/widgets/latest_chapters.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              size: size,
            ),
            LatestChapters(
              size: size,
            ),
            ContinueReadingMangas(
              size: size,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
        backgroundColor: Colors.grey[100],
        activeColor: Colors.grey[900],
        style: TabStyle.textIn,
        color: Colors.grey[500],
      ),
    );
  }
}
