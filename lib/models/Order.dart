import 'package:barback/models/guest.dart';

import 'cocktail.dart';
import 'table.dart';

class Order {
  final String id;
  final List<Cocktail> cocktails;
  final Guest guest;
  final BarTable barTable;

  Order(
      {required this.id,
      required this.cocktails,
      required this.guest,
      required this.barTable});
}
