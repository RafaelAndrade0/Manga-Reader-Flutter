import 'package:flutter/material.dart';

class CardLastChapter extends StatelessWidget {
  const CardLastChapter({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        height: size.height * 0.14,
        width: double.infinity,
        decoration: (BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.blue[800]],
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(30, 100),
              bottomRight: Radius.elliptical(30, 100)),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.black12,
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        )),
        child: Align(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Read Last Chapter!',
                style: TextStyle(
                  fontFamily: 'Anime Ace',
                  fontSize: 25,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 4
                    ..color = Colors.black,
                ),
              ),
              // Solid text as fill.
              Text(
                'Read Last Chapter!',
                style: TextStyle(
                  fontFamily: 'Anime Ace',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
