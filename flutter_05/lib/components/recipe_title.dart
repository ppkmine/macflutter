

import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top : 20),
        child: Text(
          'Recipes', style: TextStyle(fontSize: 30),

        ),
      ),
    );
  }
}
