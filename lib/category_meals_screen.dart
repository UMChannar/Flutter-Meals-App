import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Recipes"),
      ),
      body: Center(
        child: Text('The Recipes for the Category! '),
      ),
    );
  }
}
