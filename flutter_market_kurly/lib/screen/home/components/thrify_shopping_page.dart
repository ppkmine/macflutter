import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/product.dart';
import 'package:flutter_market_kurly/screen/home/components/circle_container.dart';
import 'package:flutter_market_kurly/screen/home/components/product_filter_button.dart';
import 'package:flutter_market_kurly/screen/home/components/product_item.dart';

class ThrifyShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate(
          [
            SizedBox(
              height: 120,
              child: Image.asset(
                'assets/images/kurly_banner_1.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                child: ProductFilterButton(),
                width: 100,
              ),
            )
          ],
        )),

        ///다른 Sliver 위젯의 측면에 패딩을 적용하는 Sliver
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Stack(
                children: [
                  ProductItem(
                    product: productList[index],
                  ),
                  Positioned(
                    bottom: 90,
                    right: 10,
                    child: CircleContainer(
                        iconPath: 'assets/icons/shopping-cart.svg'),
                  )
                ],
              );
            },
                  childCount: productList.length,

            ),
          ),
        )
      ],
    );
  }
}
