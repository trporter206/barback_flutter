import 'package:flutter/material.dart';

import '../models/cocktail.dart';

class MenuListItem extends StatelessWidget {
  final Cocktail cocktail;

  const MenuListItem({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 75,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cocktail.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0 
                      ),
                    ),
                    Text(cocktail.note),
                  ],
                ),
              ),
              Text(
                '\$ ${cocktail.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                )
            ],
          ),
        ),
      ),
    );
  }
}