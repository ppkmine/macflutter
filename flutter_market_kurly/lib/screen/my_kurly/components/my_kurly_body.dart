import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/text_menu.dart';
import 'package:flutter_market_kurly/screen/components/text_menu_card.dart';
import 'package:flutter_market_kurly/screen/my_kurly/components/my_kyrly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        buildPaddingTextMenuCard('비회원 주문조회', () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => SizedBox(
                    height: 55,
                    child: TextMenuCard(
                      title: textMenuList[index].text,
                      icon: textMenuList[index].icon,
                      press: () {},
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(height: 0),
              itemCount: textMenuList.length),
        ),
        buildPaddingTextMenuCard('컬리소개', () {}),
      ],
    );
  }

  Padding buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: 'assets/icons/right-arrow.svg',
          textColor: Colors.black,
        ),
      ),
    );
  }
}
