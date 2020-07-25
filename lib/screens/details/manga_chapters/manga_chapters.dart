import 'package:flutter/material.dart';

class MangaChapters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(300, (i) => "Chapter $i");
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
            subtitle: Text('dd/MM/yyyy'),
            leading: Image.asset('assets/images/icon_db.png'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}
