import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_022/models/product.dart';
import 'package:flutter_022/screens/home/components/product_item.dart';
import 'package:flutter_022/theme.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('좌동', style: TextStyle(
              color: Colors.black,
            ),),
            SizedBox(width: 4.0),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search,
            color: Colors.black,), onPressed: () {}),
          IconButton(
              icon: const Icon(CupertinoIcons.list_dash),
    color: Colors.black, onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell,
            color: Colors.black,), onPressed: () {})
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            product: productList[index],
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}