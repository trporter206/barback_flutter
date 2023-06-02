import 'dart:collection';

import 'package:barback/models/Cocktail.dart';
import 'package:barback/models/Ingredient.dart';
import 'package:barback/models/Table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'models/Bartender.dart';
import 'models/Guest.dart';
import 'models/Order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Barback App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Barback'),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var loggedIn = false;
  var currentBartender = Bartender(
    id: "1",
    inventory: [i1],
    menu: [c1],
    queue: Queue<Order>.from([order1]),
    queueIsOpen: false,
    tables: [t1],
  );
}

var g1 = Guest(id: "g1");
var c1 = Cocktail(
    name: 'cocktail',
    type: 'whiskey',
    ingredients: [],
    steps: [],
    note: 'a classic',
    price: 11.0
);
var order1 = Order(id: "o1", cocktails: [c1], guest: g1);
var i1 = Ingredient(name: 'Woodford', type: 'whiskey', price: 6.0);
var t1 = BarTable(tableNumber: 1, guests: [g1], orders: [order1]);