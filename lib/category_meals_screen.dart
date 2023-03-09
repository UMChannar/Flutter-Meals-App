import 'package:flutter/material.dart';

import './dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static String routeName = '/category-meals';

  // final String categoryid;
  // final String categorytitle;

  // CategoriesMealsScreen(this.categoryid, this.categorytitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categorytitle = routeArgs['title'];
    final categoryid = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryid);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(
            categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
