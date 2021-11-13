import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_022/models/recommend_store.dart';
import 'package:flutter_022/screens/chatting/components/appbar_prefreed_size.dart';
import 'package:flutter_022/screens/near_me/bottom_title_icon.dart';
import 'package:flutter_022/screens/near_me/components/round_border_text.dart';
import 'package:flutter_022/screens/near_me/components/search_text_field.dart';
import 'package:flutter_022/screens/near_me/components/store_item.dart';
import 'package:flutter_022/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '내 근처',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.pencil,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          //SizeBox 위젯을 활용하여 수평 스크롤이 되는 영역의 높이 값을
          //지정해 주어야 합니다.
          SizedBox(
            height: 66,
            child: ListView.builder(
                itemCount: searchKeyword.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Center(
                    child: RoundBorderText(
                      title: searchKeyword[index],
                      position: index,
                    ),
                  );
                }),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 30.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: [
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.user, title: '구인구직'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.edit, title: '과외/클래스'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.appleAlt, title: '농수산물'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.hotel, title: '부동산'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.car, title: '중고차'),
                const BottomTitleIcon(
                    iconData: FontAwesomeIcons.chessBishop, title: '전시/행사'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text('이웃들의 추천 가게', style: textTheme().headline2),
          ),
          const SizedBox(height: 20),
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: recommendStoreList.length,
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(left:16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),);
                }),
          ),
          SizedBox(height: 40,)

        ],
      ),
    );
  }
}
