import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/models/manga.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({Key key, @required this.size, @required this.manga})
      : super(key: key);

  final Size size;
  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * .03,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 20,
            ),
            height: size.height * .25,
            decoration: (BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 3,
                  color: Colors.black12,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(90),
              ),
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse rutrum, ante ac rhoncus elementum, nisi nunc vestibulum tortor, vitae vehicula nulla lacus vitae orci. Aliquam semper faucibus ex. Suspendisse posuere, lacus ut pretium luctus',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Positioned(
            right: size.width * .03,
            child: Container(
              height: 60,
              child: Image(
                image: AssetImage(manga.logo ?? 'assets/images/db_logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
