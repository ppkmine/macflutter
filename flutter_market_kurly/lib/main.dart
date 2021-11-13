import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/routes.dart';
import 'package:flutter_market_kurly/screen/splash/splash_screen.dart';
import 'package:flutter_market_kurly/theme.dart';

void main() {
  runApp(const MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '마켓컬리',
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
