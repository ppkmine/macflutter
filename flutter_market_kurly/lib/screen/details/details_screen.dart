import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/constants.dart';
import 'package:flutter_market_kurly/models/product_details_arguments.dart';
import 'package:flutter_market_kurly/screen/components/default_button.dart';
import 'package:flutter_market_kurly/screen/details/components/body.dart';
import 'package:flutter_market_kurly/theme.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    final arguments =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "${arguments.product.title}",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
      ),
      // 2
      body: Body(product: arguments.product),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}