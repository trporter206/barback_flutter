import 'dart:collection';
import 'package:barback/models/ingredient.dart';

import 'cocktail.dart';
import 'order.dart';
import 'table.dart';

class Bartender {
  final String id;
  final List<Cocktail> menu;
  final Queue<Order> queue;
  final bool queueIsOpen;
  final List<BarTable> tables;
  final List<Ingredient> inventory;

  Bartender(
      {required this.id,
      required this.inventory,
      required this.menu,
      required this.queue,
      required this.queueIsOpen,
      required this.tables});
}
