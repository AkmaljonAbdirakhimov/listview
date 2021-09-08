import 'dart:math';

import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final String ism;

  CardItem(this.ism);

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  Color? bgColor;

  @override
  void initState() {
    final colors = [
      Colors.amber,
      Colors.green,
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.orange,
    ];

    bgColor = colors[Random().nextInt(colors.length)];
    super.initState();
  }

  @override
  void dispose() {
    print("${widget.ism} uchdi");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.ism} yondi");
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: bgColor,
        ),
        title: Text(widget.ism),
        subtitle: Text("Salom ${widget.ism}"),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
