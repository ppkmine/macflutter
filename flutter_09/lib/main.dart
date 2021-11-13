import 'package:flutter/material.dart';
import 'package:flutter_09/components/home/home_header.dart';
import 'package:flutter_09/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

