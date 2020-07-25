import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/shared/clip_shadow_path.dart';
import 'package:manga_reader_flutter/shared/custom_shape_clipper.dart';

class Header extends StatefulWidget {
  final Size size;

  const Header({Key key, @required this.size}) : super(key: key);
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      clipper: CustomShapeClipper(),
      shadow: Shadow(blurRadius: 15),
      child: Container(
        alignment: Alignment.centerLeft,
        height: widget.size.height * .35,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/header3.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
