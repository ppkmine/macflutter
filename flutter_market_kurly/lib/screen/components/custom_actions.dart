

import 'package:flutter/material.dart';
import 'package:flutter_market_kurly/screen/components/stack_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 38,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/pin.svg',
              color: Colors.white,
            ),
          ),
        ), SizedBox(
          width: 38, child: StackIcon(
          imgPath: 'assets/icons/shopping-cart.svg',
          onPressed: () {},
          counter: '2',
        ),
        )
      ],
    );
  }
}
