import 'package:flutter/material.dart';

class Characters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.black12,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            // topRight: Radius.elliptical(20, 100),
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'FAVORITE CHARACTERS',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Row AQUI'),
            Text('Row AQUI'),
            Text('Row AQUI'),
            Text('Row AQUI'),
          ],
        ),
      ),
    );
  }
}
