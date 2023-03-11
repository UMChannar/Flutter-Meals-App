import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  static const routeName = '/filter';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var glutenFree = false;
  var vegetarian = false;
  var vegan = false;
  var lactoseFree = false;

  Widget buildSwitchListTile(
    bool value,
    String title,
    String subtitle,
    void Function(bool)? updatedValue,
  ) {
    return SwitchListTile(
      value: value,
      onChanged: updatedValue,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      subtitle: Text(
        subtitle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filters',
        ),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  glutenFree,
                  'Gluten Free',
                  'Only included Gluten-Free meals',
                  (newValue) {
                    setState(() {
                      glutenFree = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  vegetarian,
                  'Vegetarian',
                  'Only included Vegetarian meals',
                  (newValue) {
                    setState(() {
                      vegetarian = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  vegan,
                  'Vegan',
                  'Only included Vegan meals',
                  (newValue) {
                    setState(() {
                      vegan = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  lactoseFree,
                  'Lactose Free',
                  'Only included lactose-Free meals',
                  (newValue) {
                    setState(() {
                      lactoseFree = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
