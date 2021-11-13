import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/constants.dart';
import 'package:flutter_market_kurly/models/grid_category_menu.dart';
import 'package:flutter_market_kurly/models/list_category_menu.dart';
import 'package:flutter_market_kurly/screen/category/components/extends_icon_text_card.dart';
import 'package:flutter_market_kurly/screen/category/components/image_text_card.dart';
import 'package:flutter_market_kurly/screen/components/custom_actions.dart';
import 'package:flutter_market_kurly/screen/components/text_menu_card.dart';
import 'package:flutter_market_kurly/theme.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카테고리'),
        actions: [
          CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body:CustomScrollView(
        slivers: [
          SliverPadding(padding:
          const EdgeInsets.symmetric(vertical: 12),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              ///자식 위젯 크기를 제안
              height: 60,
              ///우리가 만들었던 TextMenuCard위젯을 활용하고 속성들의
              ///값을 지정하였습니다.
              child: TextMenuCard(
                title: '자주 사는 상품',
                icon: 'assets/icons/right-arrow.svg',
                textColor: kPrimaryColor,
                iconClor: kPrimaryColor,
                press: () {},
              ),
              ),
          ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200],
            thickness: 12,),

          ),SliverList(delegate: SliverChildListDelegate(
            List.generate(
          listCategoryMenuList.length,
                    (index) => ExtendsIconTextCard(
                        item: listCategoryMenuList[index]))
          )),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200],
            thickness: 12,),

          ),SliverPadding(padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
          sliver: SliverToBoxAdapter(
            child: Text('컬리의 추천',
            style: textTheme().headline2,),
          ),),
          SliverPadding(padding:
          EdgeInsets.only(left: 16, right: 16, bottom: 40),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 10,
              ///SliverGrid 안에 위젯의 크기를 1:1 비율로 설정,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ImageTextCard(item: gridCategoryMenuList[index],
                  );
                },
              childCount: gridCategoryMenuList.length,
            ),
          ),
          )
        ],
      ),
    );
  }
}
