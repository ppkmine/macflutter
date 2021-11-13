import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String title;

  const Logo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/iu.png',
          height: 150,
          width: 150,
        ), Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
          color: Colors.grey[400]),
        )
      ],
    );
  }
}
