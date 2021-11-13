import 'package:flutter/material.dart';
import 'package:flutter_07/components/custom_form.dart';
import 'package:flutter_07/components/logo.dart';
import 'package:flutter_07/size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap,),
            Logo(title: 'Login'),
            SizedBox(height: large_gap,),
            CustomForm(),
          ],
        ),
      ),

    );
  }
}
