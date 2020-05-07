import 'package:flutter/material.dart';
import '../data.dart';

class RecipeScreen extends StatelessWidget {
  // final String title;
  // final String cid;

  // RecipeScreen(this.title, this.cid);

  @override
  Widget build(BuildContext context) {
  final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
  final title = routeArgs['title'];
  final cid = routeArgs['id'];

  final recipe = dummyRecipes.where((r) {
    return r.categories.contains(cid);
  }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, idx) {
          return Text(recipe[idx].title);
        },
        itemCount: recipe.length,
      ),
    );
  }
}
