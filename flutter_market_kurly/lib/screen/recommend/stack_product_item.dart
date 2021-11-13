import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/product.dart';
import 'package:flutter_market_kurly/screen/components/product_item.dart';
import 'package:flutter_market_kurly/screen/home/components/circle_container.dart';

class StackProductItem extends StatelessWidget {
  ///컨테이너 위젯의 가로 크기를 지정하지 않고, 사용하는 부모의 위젯에서 가로 크기를 정할수
  ///있습니다.
  final double width;
  final Product item;
  final int number;

  const StackProductItem(
      {Key? key, required this.width, required this.item, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10),

      /// 우리가 만든 ProductItem에 Stack 위젯을 활용합니다.
      child: Stack(
        children: [
          ProductItem(product: item),
          Positioned(
              left: 10,
              bottom: 80,
              child: Text(
                '$number',
                style: TextStyle(fontSize: 40, color: Colors.white),
              )),
          Positioned(
            right: 10,
            bottom: 85,
            child: CircleContainer(
              iconPath: 'assets/icons/star.svg',
            ),
          ),
          number == 1 ?  Container(
            height: 190,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.5),

            ),
            child: Center(
              child: Text(
                'Coming Soon', style: TextStyle(
                fontSize: 16, color: Colors.white,
              ),
              ),
            ),
          ) : SizedBox()
        ],
      ),
    );
  }
}
