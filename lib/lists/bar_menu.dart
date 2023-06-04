import 'package:barback/list_items/menu_list_item.dart';
import 'package:barback/main.dart';
import 'package:barback/models/cocktail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarMenu extends StatefulWidget {
  const BarMenu({Key? key}) : super(key: key);

  @override
  BarMenuState createState() => BarMenuState();
}

class BarMenuState extends State<BarMenu> {
  late List<Cocktail> cocktails;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    cocktails = [];
    var c0 = Cocktail(
        name: "Old Fashioned",
        type: 'Whiskey',
        ingredients: [],
        steps: [],
        note: 'All time classic',
        price: 11.0);
    cocktails.add(c0);

    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Menu: ${appState.currentBartender.menu.length}')),
          Expanded(
            child: ListView(
              children: cocktails.map((Cocktail cocktail) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MenuListItem(cocktail: cocktail),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
