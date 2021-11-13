




import 'package:flutter/cupertino.dart';
import 'package:netfilx_ui/screens/detail/detail_screen.dart';
import 'package:netfilx_ui/screens/main_screens.dart';
import 'package:netfilx_ui/screens/profile/profile_screen.dart';
import 'package:netfilx_ui/screens/splash/splash_screen.dart';

/// 프로젝트 앱의 화면? 경로의 이름을 정의하고 관리하는 파일 입니다.?
///

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName:(context) => SplashScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  MainScreens.routeName:(context) => MainScreens(),
  DetailScreen.routeName:(context) => DetailScreen(),
};