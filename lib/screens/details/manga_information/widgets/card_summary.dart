import 'package:flutter/material.dart';

class CardSummary extends StatelessWidget {
  const CardSummary({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: size.width * 0.4,
            // width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 3,
                color: Colors.black,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/header.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Dragon Ball',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Last Chapter: #258',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                              // Stroked text as border.
                              Text(
                                '9.8',
                                style: TextStyle(
                                  fontFamily: 'Anime Ace',
                                  fontSize: 16,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 4
                                    ..color = Colors.white,
                                ),
                              ),
                              // Solid text as fill.
                              Text(
                                '9.8',
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
                      Container(
                        height: 25,
                        child: Image(
                          image: AssetImage('assets/images/shonen_logo.png'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Also Read',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Dragon Ball Z',
                        style: TextStyle(
                          color: Colors.blue[500],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.blue[500],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Bleach',
                        style: TextStyle(
                          color: Colors.blue[500],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.blue[500],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Dragon Ball Super',
                        style: TextStyle(
                          color: Colors.blue[500],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.blue[500],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
