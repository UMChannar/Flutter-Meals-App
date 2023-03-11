import 'package:flutter/material.dart';

import '../model/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
        child: Text(
          'You have no favourites yet - Start adding some!',
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals![index].id,
            title: favouriteMeals![index].title,
            imageUrl: favouriteMeals![index].imageUrl,
            duation: favouriteMeals![index].duration,
            affordability: favouriteMeals![index].affordability,
            complexity: favouriteMeals![index].complexity,
          );
        },
        itemCount: favouriteMeals!.length,
      );
    }
  }
}
