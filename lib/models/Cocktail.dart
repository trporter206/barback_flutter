

import 'Bartender.dart';
import 'Ingredient.dart';

class Cocktail {
  final String name;
  final String type;
  final List<Ingredient> ingredients;
  final List<String> steps;
  final String note;
  final double price;

  Cocktail({
    required this.name,
    required this.type,
    required this.ingredients,
    required this.steps,
    required this.note,
    required this.price,
  });

  double getCocktailPrice(Bartender bartender) {
    double finalPrice = 0.0;
    for (var ingredient in ingredients) {
      finalPrice += ingredient.price;
    }
    return finalPrice;
  }
}