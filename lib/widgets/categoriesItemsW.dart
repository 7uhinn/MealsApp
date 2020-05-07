import 'package:flutter/material.dart';

class CategoriesItems extends StatelessWidget {
  final String title;
  final Color color;
  final String cid;

  CategoriesItems(this.title, this.color, this.cid);

  goToRecipeScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/recipes',
      arguments: {
        'id': cid,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToRecipeScreen(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
