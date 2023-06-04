import 'dart:collection';

// import 'package:barback/models/Cocktail.dart';
// import 'package:barback/models/Ingredient.dart';
// import 'package:barback/models/Table.dart';
import 'package:barback/models/cocktail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'models/bartender.dart';
import 'models/guest.dart';
import 'models/order.dart';

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
  var c0 = Cocktail(
    name: "Old Fashioned",
    type: 'Whiskey',
    ingredients: [],
    steps: [],
    note: 'All time classic',
    price: 11.0
  );
  var currentBartender = Bartender(
    id: "1",
    inventory: [],
    menu: [],
    queue: Queue<Order>(),
    queueIsOpen: false,
    tables: [],
  );
  var g1 = Guest(id: "g1");
}
