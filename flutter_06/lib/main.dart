import 'package:flutter/material.dart';
import 'package:flutter_06/components/profile_buttons.dart';
import 'package:flutter_06/components/profile_count_info.dart';
import 'package:flutter_06/components/profile_drawer.dart';
import 'package:flutter_06/components/profile_header.dart';
import 'package:flutter_06/components/profile_tab.dart';
import 'package:flutter_06/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: [
          SizedBox(height: 20,),
          ProfileHeader(),
          SizedBox(height: 20,),
          ProfileCountInfo(),
          SizedBox(height: 20,),
          ProfileButtons(),
          ///남아 있는 세로 공간 모두 차지 하기 위해 Expanded를 준다.
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }
  AppBar _buildProfileAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios),
      title: Text('Profile', style: TextStyle(color: Colors.black),),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}

