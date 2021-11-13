

import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
        const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, 'ALL'), //재사
          SizedBox(width: 25,),
          _buildMenuItem(Icons.coffee, 'Coffee'),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.fastfood, 'Burger'),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.local_pizza, 'Pizza'),

        ],
      )

    );
  }

  ///재사용 할수 있는 함수로 만든다.
  ///Widget은 모든 위젯의 부모이기 때문에 함수 리턴 타입은 Widget으로 하는 것이 좋다.


  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30,),
          SizedBox(height: 5,),
          Text(
            text, style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
