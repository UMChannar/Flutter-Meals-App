import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  static const routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Filters',
          ),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Text(
            'filters',
          ),
        ));
  }
}
