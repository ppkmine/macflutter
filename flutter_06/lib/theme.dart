import 'package:flutter/material.dart';


ThemeData theme() {
  return ThemeData(
    primaryColor:  Colors.white,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
    )
  );
}

/// PrimaryColor .? 브랜드의 아이덴티티를 나타내는 색입니다 앱에 PrimaryColor는
/// blue 색상이 기본으로 잡혀있기 때문에 해당 색상을 white로 변경해 주었습니다.

/// AccentColor 앱의 상호 작용 요소에 사용하는 색 입니다. 버튼이나 링크, 토글 그리고
/// 스위치, 진행률 표시기 같은 것들의 색상은 AccentColor로 나타냅니다.
/// 다른말로 하면 SecondaryColor라고 부르기도 합니다.