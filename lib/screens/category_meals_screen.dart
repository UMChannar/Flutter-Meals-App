import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../model/meal.dart';

class CategoriesMealsScreen extends StatefulWidget {
  static String routeName = '/category-meals';

  List<Meal> availableMeals;

  CategoriesMealsScreen(this.availableMeals);

  @override
  State<CategoriesMealsScreen> createState() => _CategoriesMealsScreenState();
}

class _CategoriesMealsScreenState extends State<CategoriesMealsScreen> {
  String? categoryTitle;
  List<Meal>? displayedMeals;
  bool loadedInitData = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (!loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryid = routeArgs['id'];
      displayedMeals = widget.availableMeals.where(
        (meal) {
          return meal.categories.contains(categoryid);
        },
      ).toList();
      loadedInitData = true;
    }
  }

  void removeMeal(String mealId) {
    setState(() {
      displayedMeals!.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals![index].id,
            title: displayedMeals![index].title,
            imageUrl: displayedMeals![index].imageUrl,
            duation: displayedMeals![index].duration,
            affordability: displayedMeals![index].affordability,
            complexity: displayedMeals![index].complexity,
          );
        },
        itemCount: displayedMeals!.length,
      ),
    );
  }
}
