import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<String> ismlar = [
    "1.Rustam",
    "2. Abror",
    "3. Diyor",
    "4. Aziz",
    "5. Nilufar",
    "6. Nodira",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        itemExtent: 300,
        itemBuilder: (ctx, index) {
          print(ismlar[index]);
          return CardItem(ismlar[index]);
        },
        itemCount: ismlar.length,
      ),
    );
  }
}
// ListView(
//         itemExtent: 300,
//         children: ismlar.map((ism) {
//           print(ism);
//           return CardItem(ism);
//         }).toList(),
//       ),