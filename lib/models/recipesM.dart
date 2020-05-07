enum Complexity {
  Easy,
  Medium,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Recipe {
  final String id;
  final List<String> categories;
  final String title;
  final String imgURL;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Recipe({
    this.id,
    this.categories,
    this.title,
    this.imgURL,
    this.ingredients,
    this.steps,
    this.duration,
    this.complexity,
    this.affordability,
    this.isGlutenFree,
    this.isLactoseFree,
    this.isVegan,
    this.isVegetarian,
  });
}
