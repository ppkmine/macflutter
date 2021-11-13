

import 'package:flutter/material.dart';
import 'package:flutter_022/models/icon_menu.dart';
import 'package:flutter_022/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_022/screens/my_carrot/components/my_carrot_header.dart';


class MyCarrotScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근', style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          IconButton(icon: const Icon(Icons.settings,
          color: Colors.black,),
          onPressed: () {},),
        ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5,
            height: 0.5, color: Colors.grey,),
          ),
      ),
      body: ListView(
        children:  [
          MyCarrotHeader(),
          SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8.0,),
          CardIconMenu(iconMenuList: iconMenu3),


        ],
      )
    );
  }
}
