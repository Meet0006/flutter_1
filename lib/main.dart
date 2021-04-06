import 'package:flutter/material.dart';
import 'package:flutter_1/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Complate App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: "Margarine",
      ),
      home: HomePage(),
    );
  }
}
