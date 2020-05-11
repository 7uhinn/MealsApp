import 'package:flutter/material.dart';
import 'package:meals_app/widgets/recipesItemsW.dart';
import '../data.dart';

class RecipeScreen extends StatelessWidget {
  // final String title;
  // final String cid;

  // RecipeScreen(this.title, this.cid);
  static const routeName = '/recipes';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
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
          return RecipeItems(
            id: recipe[idx].id,
            title: recipe[idx].title,
            imgURL: recipe[idx].imgURL,
            duration: recipe[idx].duration,
            complexity: recipe[idx].complexity,
            affordability: recipe[idx].affordability,
          );
        },
        itemCount: recipe.length,
      ),
    );
  }
}
