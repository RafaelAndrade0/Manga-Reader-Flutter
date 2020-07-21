import 'package:flutter/material.dart';
import 'package:manga_reader_flutter/shared/clip_shadow_path.dart';
import 'package:manga_reader_flutter/shared/custom_shape_clipper.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      clipper: CustomShapeClipper(),
      shadow: Shadow(blurRadius: 15),
      child: Container(
        alignment: Alignment.centerLeft,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/header3.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        // child: Container(
        //   height: 120,
        //   width: 260,
        //   padding: EdgeInsets.all(20),
        //   decoration: BoxDecoration(
        //     // color: Colors.white,
        //     gradient: LinearGradient(colors: [
        //       Colors.grey[100],
        //       Colors.white,
        //     ]),
        //     borderRadius: BorderRadius.only(
        //       topRight: Radius.circular(30),
        //       bottomRight: Radius.circular(30),
        //     ),
        //   ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       Text(
        //         'Dragon Ball',
        //         style: TextStyle(
        //           fontSize: 42,
        //           fontWeight: FontWeight.w900,
        //           color: Colors.black,
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: <Widget>[
        //           Text('Volume 21'),
        //           Text(
        //             '9.8',
        //             style: TextStyle(
        //               fontSize: 20,
        //               fontWeight: FontWeight.w800,
        //               color: Colors.black,
        //             ),
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
