import 'package:flutter/material.dart';
import 'package:project_recipes/components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  List<Meal> favoritesMeals;

  FavoriteScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma receita foi marcada como favorita.'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoritesMeals[index]);
        },
      );
    }
  }
}
