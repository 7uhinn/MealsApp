import 'package:flutter/material.dart';
import './categoriesItemsW.dart';
import './categoriesD.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealsApp'),
      ) ,
      body: GridView(
        children: dummy.map((ci) {
          return CategoriesItems(ci.title, ci.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
