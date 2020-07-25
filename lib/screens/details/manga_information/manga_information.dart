import 'package:flutter/material.dart';

class MangaInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 320,
            padding: EdgeInsets.all(30),
            child: Row(
              children: <Widget>[
                Container(
                  width: 180,
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
                                image:
                                    AssetImage('assets/images/shonen_logo.png'),
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
          ),
          Padding(
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
                  height: 200,
                  decoration: (BoxDecoration(
                    // color: Colors.red,
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
                      image: AssetImage('assets/images/db_logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            // child: Container(
            //   height: 100,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       width: 3,
            //       color: Colors.black,
            //     ),
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //     gradient: LinearGradient(
            //       colors: [Colors.blueAccent, Colors.blue[800]],
            //     ),
            //   ),
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Stack(
            //       children: <Widget>[
            //         // Stroked text as border.
            //         Text(
            //           'Read Last Chapter!',
            //           style: TextStyle(
            //             fontFamily: 'Anime Ace',
            //             fontSize: 25,
            //             foreground: Paint()
            //               ..style = PaintingStyle.stroke
            //               ..strokeWidth = 4
            //               ..color = Colors.black,
            //           ),
            //         ),
            //         // Solid text as fill.
            //         Text(
            //           'Read Last Chapter!',
            //           style: TextStyle(
            //             fontFamily: 'Anime Ace',
            //             fontSize: 25,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: (BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/last_chapter_2.png'),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
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
                          ..color = Colors.white,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Read Last Chapter!',
                      style: TextStyle(
                        fontFamily: 'Anime Ace',
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
