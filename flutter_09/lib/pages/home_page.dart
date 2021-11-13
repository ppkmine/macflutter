


import 'package:flutter/material.dart';
import 'package:flutter_09/components/home/home_body.dart';
import 'package:flutter_09/components/home/home_header.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
