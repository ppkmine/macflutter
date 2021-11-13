

import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/constants.dart';
import 'package:flutter_market_kurly/models/nav_item.dart';
import 'package:flutter_market_kurly/screen/category/category_screen.dart';
import 'package:flutter_market_kurly/screen/home/home_screen.dart';
import 'package:flutter_market_kurly/screen/my_kurly/my_kurly_screen.dart';
import 'package:flutter_market_kurly/screen/recommend/recommend_screen.dart';
import 'package:flutter_market_kurly/screen/search/search_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreens extends StatefulWidget {

  //플러터가 이화면을 찾을때 경로의 이름으로 사용됩니다.
  static String routeName = '/main_screens';

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  /// 현재 선택된 indexStack위젯의 자식 index를 저장하는 변수를 선언합니다.
   int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKyrlyScreen(),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
        navItems.length, (index) => _buildBottomNavigationBarItem(
          icon: navItems[index].icon,
          label: navItems[index].label,

          ///현재 선택한 BottomNavigationBarItem 인덱스.
          ///번호와 NavItem 객체의 id 값이 같으면 true를 리턴합니다
          isActive: navItems[index].id == _selectedIndex? true : false,
        ))
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem({String? icon,
    String? label,
    bool isActive = false,
    GestureTapCallback? press}) {
    return BottomNavigationBarItem(
        icon: SizedBox(
          width: 38, height: 38, child: IconButton(
          onPressed: press,
          icon: SvgPicture.asset(icon ?? 'assets/icons/star.svg',
          color: isActive ? kPrimaryColor : Colors.black,
          ),
        ),

        ), label: label,

    );

  }
}
