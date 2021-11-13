import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex1/screens/chat_screen.dart';
import 'package:flutter_ex1/screens/friend_screen.dart';
import 'package:flutter_ex1/screens/more_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black, fontSize: 24),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // 여러 페이지로 이동하기 위해, 사용,,Tv 채널을 변경하는것과
        // 유사하며, 현재 인덱스에 해당하는 하나의 위젯만 보여집니다.
        index: _selectedIndex,
        //indexdStack의 현재 index 값을 나타냅니다
        //index는 0부터 시작해 items의 1번째 대응..
        //BottomNavigationBar의 아이콘이 선택될때마다,
        //index가 변경. 해당 index에 대응하는 화면이 보여지게 됩니다.
        children:[

          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ]

      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsisH),
            label: '',
          ),
        ],
      ),
    );
  }
}
