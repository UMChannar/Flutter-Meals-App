import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
      ),
      body: Center(
        child: Text('The recepie of $categorytitle'),
      ),
    );
  }
}
