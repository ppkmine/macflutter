
import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/screen/components/custom_actions.dart';
import 'package:flutter_market_kurly/screen/my_kurly/components/my_kurly_body.dart';

class MyKyrlyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
      title: Text('마켓컬리'),
    actions: [CustomActions()],
      ),
      body: SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}
