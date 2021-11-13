

import 'package:flutter/material.dart';
import 'package:netfilx_ui/constants.dart';

/// 앱에 공통으로 사용할 테마들?

ThemeData them() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(
      /// bodyText2 는 머티리얼 디자인의 기본 텍스트 스타일 입니다.
      /// constants에 정의한 kTextCol
      bodyText2: TextStyle(color: kTextColor),
    )

  );
}