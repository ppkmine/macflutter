import 'package:flutter/material.dart';
import 'package:flutter_022/screens/main_screens.dart';
import 'package:flutter_022/theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'carrot_marker_ui',
      home:  MainScreens(),
      theme: theme(),
    );
  }
}
