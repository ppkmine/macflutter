import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/models/product.dart';
import 'package:flutter_market_kurly/string_extensions.dart';
import 'package:flutter_market_kurly/theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem(
      {Key? key,
      required this.product,
      this.lineChange = false,
      this.textContainerHeight = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: InkWell(
          onTap: () {},
          child: Image.network(
            product.imageUrl ?? 'assets/images/kurly_banner_0.jpg',
            fit: BoxFit.cover,
          ),
        )),
        Container(
          height: textContainerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: "${product.title} ${lineChange == true ? '\n' : ""}",
                  style: textTheme().subtitle1),
              TextSpan(
                text: "${product.discount}%",
                style: textTheme().headline2?.copyWith(color: Colors.red),
              ),
              TextSpan(
                text: "${product.price.toString().numberFormat()}원",
                style: textTheme().bodyText2?.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              )
            ])),
          ),
        )
      ],
    );
  }
  ///할인율에 따라 가격이 계산되는 함수 입니다.
 String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return "${discountPrice.toString().numberFormat()}원 ";
 }
}
