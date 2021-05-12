import 'package:flutter/material.dart';
import 'package:drinks/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coc App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: "Margarine",
      ),
      home: HomePage(),
    );
  }
}
