import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/constants.dart';
import 'package:flutter_market_kurly/screen/components/custom_actions.dart';
import 'package:flutter_market_kurly/screen/home/components/benefit_page.dart';
import 'package:flutter_market_kurly/screen/home/components/kurly_page.dart';
import 'package:flutter_market_kurly/screen/home/components/new_product_page.dart';
import 'package:flutter_market_kurly/screen/home/components/thrify_shopping_page.dart';
import 'package:flutter_market_kurly/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ['컬리추천', '신상품', '금주혜택', '알뜰쇼핑'];

    ///DefaultTabController는 TabBar 또는 TabBarView  와 TabController를
    ///공유하는데 사용되는 상속된 위젯..
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Kurly'),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.grey),
                  ),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),

                ///선택된 탭의 색상
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),

                ///선택된 탭 아래 선 색상,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),

        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThrifyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
