import 'package:barback/models/Guest.dart';

import 'Cocktail.dart';

class Order {
  final String id;
  final List<Cocktail> cocktails;
  final Guest guest;

  Order({
    required this.id,
    required this.cocktails,
    required this.guest
  });
}