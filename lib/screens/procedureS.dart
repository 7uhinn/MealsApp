import 'package:flutter/material.dart';

class ProcedureScreen extends StatelessWidget {
  static const routeName = '/procedure';

  @override
  Widget build(BuildContext context) {
    final recipeID = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeID),
      ),
      body: Center(
        child: Text(
          'The meal we gonna use: $recipeID',
        ),
      ),
    );
  }
}
