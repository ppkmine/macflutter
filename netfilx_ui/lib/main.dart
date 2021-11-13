import 'package:flutter/material.dart';
import 'package:netfilx_ui/routes.dart';
import 'package:netfilx_ui/screens/splash/splash_screen.dart';
import 'package:netfilx_ui/theme.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFilx',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: them(),
      routes: route,
    );
  }
}
