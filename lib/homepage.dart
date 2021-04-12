import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_1/drink_detail.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res, drinks;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await http.get(Uri.parse(api));
    print(res.body);
    drinks = jsonDecode(res.body)['drinks'];
    print(drinks.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue[300],
        //Colors.orange[300],
        Colors.red[300],
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Coc App'),
          elevation: 0.0,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: res != null
              ? ListView.builder(
                  itemCount: drinks.length,
                  itemBuilder: (context, index) {
                    var drink = drinks[index];
                    return ListTile(
                      leading: Hero(
                        tag: drink["idDrink"],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                        ),
                      ),
                      title: Text(
                        "${drink["strDrink"]}",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        "${drink["idDrink"]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DrinkDetail(drink: drink)));
                      },
                    );
                  },
                )
              : CircularProgressIndicator(
                  backgroundColor: Colors.blueGrey[300],
                ),
        ),
      ),
    );
  }
}
