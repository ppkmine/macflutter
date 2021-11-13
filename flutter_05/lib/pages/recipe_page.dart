import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_05/components/recipe_list_item.dart';
import 'package:flutter_05/components/recipe_menu.dart';
import 'package:flutter_05/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),

      ///비어 있는 appbar 연결하기
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        ///수평으로 여백 주기
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem('coffee', 'Made Coffee'),
            RecipeListItem('burger', 'Made Burger'),
            RecipeListItem('pizza', 'Made Pizza'),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.red,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
