import 'package:flutter/material.dart';
import 'package:flutter_08/components/shoppingcart_detail.dart';
import 'package:flutter_08/components/shoppingcart_header.dart';
import 'package:flutter_08/theme.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

 AppBar _buildShoppingCartAppBar() {
    return AppBar(
      elevation:  0.0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon:Icon(Icons.arrow_back, color: Colors.black,),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.black,),
          onPressed: () {},
        ),
        SizedBox(width: 16,)
      ],
    );
 }
}
