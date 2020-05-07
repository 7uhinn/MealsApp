import 'package:flutter/material.dart';
import '../widgets/categoriesItemsW.dart';
import '../data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealsApp'),
      ) ,
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: dummy.map((ci) {
          return CategoriesItems(ci.title, ci.color,ci.id);
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
