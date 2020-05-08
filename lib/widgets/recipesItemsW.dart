import 'package:flutter/material.dart';
import '../models/recipesM.dart';

class RecipeItems extends StatelessWidget {
  final String title;
  final String imgURL;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  RecipeItems(
      {this.title,
      this.imgURL,
      this.duration,
      this.complexity,
      this.affordability});

  void selectRecipe() {}

  String get complexityText {
    switch (complexity) {
      case Complexity.Easy:
        return 'Easy';
      case Complexity.Medium:
        return 'Medium';
      case Complexity.Hard:
        return 'Hard';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Inexpensive';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Expensive';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipe,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imgURL,
                      height: 250,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      width: 300,
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.schedule,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$duration min',
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.work,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          complexityText,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          affordabilityText,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
