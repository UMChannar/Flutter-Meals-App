import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static String routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$routeArgs',
        ),
      ),
      body: Center(
        child: Text(
          '$routeArgs',
        ),
      ),
    );
  }
}
