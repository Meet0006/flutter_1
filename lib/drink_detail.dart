import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key key, @required this.drink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text(drink["strDrink"]),
        elevation: 1.0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.pink[300],
          // Colors.orange[300],
          Colors.red[300],
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: drink["idDrink"],
                child: CircleAvatar(
                  radius: 125.0,
                  backgroundImage: NetworkImage(
                    drink["strDrinkThumb"],
                  ),
                ),
              ),
              Text(
                "🤩ID🤩: ${drink["idDrink"]}",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "😎Title😁: ${drink["strDrink"]}",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
