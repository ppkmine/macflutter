
import 'package:flutter/cupertino.dart';
import 'package:flutter_market_kurly/screen/details/details_screen.dart';
import 'package:flutter_market_kurly/screen/main_screens.dart';
import 'package:flutter_market_kurly/screen/signin/signin_screen.dart';
import 'package:flutter_market_kurly/screen/splash/splash_screen.dart';

/// routes.dart 파일은 이 프로젝트 앱의 화면 경로의 이름을 정의하고 관리하는 파일들
/// Flutter에게 앱에 어떤 화면들이 있는지 알려주기 위해 routes 파일을생성하여
/// 모든경로를 등록해 줍니다

//{String, Widget} 형태를 가진 Map구조.
final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName:(context) => MainScreens(),
  SignInScreen.routeName:(context) => SignInScreen(),
  DetailsScreen.routeName:(context) => DetailsScreen(),
};